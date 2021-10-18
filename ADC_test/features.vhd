library ieee;
use ieee.std_logic_1164.all;

PACKAGE features_package IS
   COMPONENT fifo_small
		PORT
		(
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			rdclk		: IN STD_LOGIC ;
			rdreq		: IN STD_LOGIC ;
			wrclk		: IN STD_LOGIC ;
			wrreq		: IN STD_LOGIC ;
			q				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			rdempty		: OUT STD_LOGIC ;
			wrfull		: OUT STD_LOGIC 
		);
   END COMPONENT;
	
	COMPONENT multiplier IS
		PORT
		(
			clock		: IN STD_LOGIC ;
			dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT adder IS
		PORT
		(
			clock		: IN STD_LOGIC ;
			dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			cout		: OUT STD_LOGIC ;
			result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	END COMPONENT;
	
END features_package;

LIBRARY work;
USE work.features_package.ALL;

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

entity features is
port (
	i_data     	: in  std_logic_vector(7 downto 0);
	clk			: IN  STD_LOGIC ;
	interr		: IN STD_LOGIC;
	
	data_ready	: IN STD_LOGIC;	-- data ready in FIFO large (wrfull)
	data_req		: OUT STD_LOGIC := '0';
	
	o_data     	: OUT STD_LOGIC_VECTOR(7 downto 0)
	--wrfull		: OUT STD_LOGIC ;

  );
end features;

architecture feat of features is

	constant zeros : std_logic_vector(7 downto 0):= "00000000";

	signal rdreq   : STD_LOGIC := '0';
	signal wrreq	: STD_LOGIC := '0';
	signal wrfull	: STD_LOGIC;
	signal rdempty	: STD_LOGIC;
	
	signal fifo_out	: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	--signal data_point	: UNSIGNED(7 DOWNTO 0);
	
	-- signals related to the 8-bit multiplier
	signal mult_in		: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	signal sq_val		: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	signal energy		: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	
	-- signals related to the 16-bit adder
	signal add_inp1	: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	signal add_inp2	: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	signal cout 		: STD_LOGIC := '0';

begin

mult_1	: multiplier PORT MAP(clock => clk, dataa => mult_in(7 DOWNTO 0),
											result => sq_val(15 DOWNTO 0));
											
add_1		: adder PORT MAP (clock => clk,
									dataa => add_inp1,
									datab => add_inp2,
									cout => cout,
									result => energy
									);

fifo_2   : fifo_small PORT MAP (data => i_data(7 DOWNTO 0), rdclk => clk, 
           rdreq => rdreq, wrclk => clk, wrreq => wrreq, 
			  q => fifo_out(7 DOWNTO 0), rdempty => rdempty, wrfull => wrfull);
			  
mult_in 		<= fifo_out and (fifo_out'left downto fifo_out'right => rdreq);
add_inp1		<= sq_val;
			  
frame_process	: process(clk)

variable accum		: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

begin

add_inp2 <= accum and (accum'left downto accum'right => rdreq);

-- start reading the data from FIFO large
if(rdempty = '1' and data_ready = '0') then
	data_req 	<= '1';
	wrreq 		<= '1';
	rdreq			<= '0';
	
end if;

-- stop reading data
if (wrfull = '1') then
	data_req 	<= '0';
	wrreq 		<= '0';
	rdreq			<= '1';
	
end if;


if (falling_edge(clk)) then

	accum := energy;
	
end if;
	
--if (rdempty = '0') then
--
--	rdreq 		<= '1';
--	data_point	<= unsigned(fifo_out);
--	sq_val		<= data_point*data_point;
--	
--end if;

--if (falling_edge(clk)) then
--	
--	
--
--end if;

end process frame_process;			  
										  
end feat;