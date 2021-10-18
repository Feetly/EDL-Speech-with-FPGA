library ieee;
use ieee.std_logic_1164.all;

PACKAGE adc_test_package IS
	COMPONENT clock_proc
		PORT
		(
			refclk   : in  std_logic := '0'; --  refclk.clk
			rst      : in  std_logic := '0'; --   reset.reset
			outclk_0 : out std_logic;        -- outclk0.clk
			locked   : out std_logic         --  locked.export
		);
	END COMPONENT;
	
   COMPONENT fifo_large
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
	
	COMPONENT features
		PORT
		(
			i_data     	: in  std_logic_vector(7 downto 0);
			clk			: IN  STD_LOGIC ;
			interr		: IN STD_LOGIC;
			
			data_ready	: IN STD_LOGIC;	-- data ready in FIFO large (wrfull)
			data_req		: OUT STD_LOGIC;
			
			o_data     	: OUT STD_LOGIC_VECTOR(7 downto 0)
		);
		END COMPONENT;
END adc_test_package;

LIBRARY work;
USE work.adc_test_package.ALL;

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adc_test is
port (
	interr		: in  std_logic;
	--rdclk			: IN 	STD_LOGIC;
	--wrreq			: IN 	STD_LOGIC;
	i_data     	: in  std_logic_vector(7 downto 0);
	refclk		: IN STD_LOGIC ;
	o_data     	: out std_logic_vector(7 downto 0);
	fifo_out		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	--rdempty		: OUT STD_LOGIC
	--wrfull		: OUT STD_LOGIC;
	
	--clk			: OUT STD_LOGIC;
	
  --o_d				: out std_logic
  );
end adc_test;

architecture intr of adc_test is

	--signal write_req  	: std_logic;
	signal wrfull			: STD_LOGIC;
	signal rdempty			: STD_LOGIC;
	
	signal data_line		: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal clk				: STD_LOGIC;
	signal locked			: STD_LOGIC;
	
	signal data_req		: STD_LOGIC := '0';
	signal flag				: STD_LOGIC := '1';
	
begin

clock_1	: clock_proc PORT MAP ( refclk => refclk,
											rst => '0',
											outclk_0 => clk,
											locked => locked
										  );

fifo_1   : fifo_large PORT MAP (data => i_data(7 DOWNTO 0), rdclk => clk, 
           rdreq => data_req, wrclk => interr, wrreq => flag, 
			  q => data_line(7 DOWNTO 0), rdempty => rdempty, wrfull => wrfull);
			  
feat_block	: features PORT MAP (i_data => data_line(7 DOWNTO 0),
											clk => clk,
											data_ready => flag,
											data_req => data_req,
											o_data => fifo_out(7 DOWNTO 0),
											interr => interr
											);
											
parallel_adc : process(interr)
																																									
begin

if (rdempty = '1') then
	flag		<= '1';
end if;

if (wrfull = '1') then
	flag 		<= '0'; 
end if;

--if(falling_edge(interr)) then
--
--	o_data              <= i_data;
--	
--	-- data input to the FIFO
--	 
--end if;
  
end process parallel_adc;

end intr;