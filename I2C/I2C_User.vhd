LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;


entity I2C_User is
	 GENERIC(
		delay     : unsigned:= X"03FFF";
		input_clk : integer := 50_000_000;
		bus_clk   : integer := 400_000);
    port(
        clk         : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        data_i      : in  std_logic_vector(15 downto 0);  --To be transmitted off master
		  data_o      : out std_logic_vector(7 downto 0); --Read over I2C
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
        -- If en is high at the conclsion of transaction, then a new address read/write command and data is latched
        );
end i2c_user;

architecture logic of i2c_user is

COMPONENT i2c_master IS
  GENERIC(
    input_clk : INTEGER := 100_000_000; --input clock speed from user logic in Hz
    bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
  PORT(
    clk       : IN     STD_LOGIC;                    --system clock
    reset_n   : IN     STD_LOGIC;                    --active low reset
    ena       : IN     STD_LOGIC;                    --latch in command
    addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
    rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
    data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
    busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
    data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
    ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
    sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
    scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
END COMPONENT;


--INTERNAL--
type machine is(start,write_data, busy_state);
signal state     : machine;
--signal busy_cnt  : integer range 0 to 4 := 0;   --Count the busy signals
--signal busy_prev : std_logic; 				    --Hold previous Busy Signal 
signal byteSel   : integer range 0 to 10 := 0;  --For issuing Data send
signal count     : unsigned(19 downto 0) := delay;
signal addr_reg  : std_logic_vector(6 downto 0) := "1110001";
signal data_reg  : std_logic_vector(7 downto 0) := x"00";

--FOR MASTER--
signal data_wr   : std_logic_vector(7 downto 0);
signal addr      : std_logic_vector(6 downto 0);
signal rw        : std_logic; 					--0 = write, 1 = read
signal ena       : std_logic; 					--1 = during transmission 
signal busy      : std_logic;
signal data_rd   : std_logic_vector(7 downto 0);

begin

	I2C_Transmit_Read: i2c_master 
		GENERIC MAP(
			input_clk =>  input_clk, --input clock speed from user logic in Hz
			bus_clk   =>  bus_clk)   --speed the i2c bus (scl) will run at in Hz
		PORT MAP(
			clk       => clk,     --in
			reset_n   => reset_n, --in
			ena       => ena,     --sig
			addr      => addr,    --sig
			rw        => rw,      --sig
			data_wr   => data_wr, --sig
			busy      => busy,    --sig
			data_rd   => data_rd, --sig
			ack_error => open, 
			sda       => sda,     --inout
			scl	      => scl      --inout
		); 
	
    process(byteSel)
    begin
        case byteSel is
            when 0       => data_reg <= X"76";
            when 1       => data_reg <= X"76";
            when 2       => data_reg <= X"76";
            when 3       => data_reg <= X"7A";
            when 4       => data_reg <= X"FF";
            when 5       => data_reg <= X"77";
            when 6       => data_reg <= X"00";
            when 7       => data_reg <= X"0"& data_i(15 downto 12);
            when 8       => data_reg <= X"0"& data_i(11 downto 8);
            when 9       => data_reg <= X"0"& data_i(7 downto 4);
            when 10      => data_reg <= X"0"& data_i(3 downto 0);
            when others  => data_reg <= X"76";
        end case;
    end process;
 
 
 
	addr <= addr_reg;
	data_wr <= data_reg;
    process(clk,reset_n)
    begin
        if(reset_n = '0') then
				ena      <= '0';
				rw       <= '0';
				byteSel  <= 0;
				count    <= delay;
            state    <= start;
        elsif (rising_edge(clk)) then
                case state is
                    when start =>
                        if count /= X"00000" then
                            count   <= count - 1;
                            ena     <= '0';
                            state   <= start;
                        else
                            ena     <= '1';
                            rw      <= '0';
                            state   <= write_data;
                        end if;
                    when write_data =>
                        if busy = '0' then
                            if byteSel < 10 then
                                byteSel <= byteSel + 1;
                            else
                                byteSel <= 7;
                                state <= start;
                            end if;
                            state <= busy_state;  
                        else
                            state <= write_data;
                        end if;
                        	
                    when busy_state =>
                        if busy = '1' then
                            state <= write_data;
                        else
                            state <= busy_state;
                        end if;
                    when others => NULL;
               end case;    
        end if;
        
        
        
    end process;
end;