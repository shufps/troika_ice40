library IEEE;
use IEEE.std_logic_1164.all;

entity powpll is
port(
      REFERENCECLK: in std_logic;
      RESET: in std_logic;
      PLLOUTCORE: out std_logic;
      PLLOUTGLOBAL: out std_logic
    );
end entity powpll;

architecture impl1 of powpll is
component SB_PLL40_CORE
  generic (
       		--- Feedback
		FEEDBACK_PATH	 		 : string := "SIMPLE"; -- String (simple, delay, phase_and_delay, external)
		DELAY_ADJUSTMENT_MODE_FEEDBACK 	 : string := "FIXED"; 
		DELAY_ADJUSTMENT_MODE_RELATIVE 	 : string := "FIXED"; 
		SHIFTREG_DIV_MODE 		: bit_vector(1 downto 0)	:= "00"; 	 --  0-->Divide by 4, 1-->Divide by 7, 3 -->Divide by 5	
	  	FDA_FEEDBACK 			: bit_vector(3 downto 0) 	:= "0000"; 	 --  Integer (0-15). 
		FDA_RELATIVE 			: bit_vector(3 downto 0)	:= "0000"; 	 --  Integer (0-15).
		PLLOUT_SELECT			: string := "GENCLK";

  		--- Use the spread sheet to populate the values below
		DIVF				: bit_vector(6 downto 0);  -- Determine a good default value
		DIVR				: bit_vector(3 downto 0);  -- Determine a good default value
		DIVQ				: bit_vector(2 downto 0);  -- Determine a good default value
		FILTER_RANGE			: bit_vector(2 downto 0);  -- Determine a good default value

  		--- Additional C-Bits
  		ENABLE_ICEGATE			: bit := '0';

  		--- Test Mode Parameter 
		TEST_MODE			: bit := '0';
		EXTERNAL_DIVIDE_FACTOR		: integer := 1 -- Not Used by model, Added for PLL config GUI
       );
  port (
        REFERENCECLK		: in std_logic;			    -- Driven by core logic
        PLLOUTCORE		: out std_logic;		    -- PLL output to core logic
        PLLOUTGLOBAL		: out std_logic;		    -- PLL output to global network
        EXTFEEDBACK		: in std_logic;			    -- Driven by core logic
        DYNAMICDELAY		: in std_logic_vector (7 downto 0); -- Driven by core logic
        LOCK				: out std_logic;	 	    -- Output of PLL
        BYPASS			: in std_logic;			    -- Driven by core logic
        RESETB			: in std_logic;			    -- Driven by core logic
        LATCHINPUTVALUE		: in std_logic;			    -- iCEGate Signal
        -- Test Pins
        SDO			: out std_logic;				-- Output of PLL
        SDI			: in std_logic;					-- Driven by core logic
        SCLK			: in std_logic					-- Driven by core logic
       );
end component;
begin
tinyfpga_pll_inst: SB_PLL40_CORE
-- Fin=16, Fout=96
generic map(
             DIVR => "0010",
             DIVF => "0100111",
             DIVQ => "011",
             FILTER_RANGE => "001",
             FEEDBACK_PATH => "SIMPLE",
             DELAY_ADJUSTMENT_MODE_FEEDBACK => "FIXED",
             FDA_FEEDBACK => "0000",
             DELAY_ADJUSTMENT_MODE_RELATIVE => "FIXED",
             FDA_RELATIVE => "0000",
             SHIFTREG_DIV_MODE => "00",
             PLLOUT_SELECT => "GENCLK",
             ENABLE_ICEGATE => '0'
           )
port map(
          REFERENCECLK => REFERENCECLK,
          PLLOUTCORE => PLLOUTCORE,
          PLLOUTGLOBAL => PLLOUTGLOBAL,
          EXTFEEDBACK => open,
          DYNAMICDELAY => open,
          RESETB => RESET,
          BYPASS => '0',
          LATCHINPUTVALUE => open,
          LOCK => open,
          SDI => open,
          SDO => open,
          SCLK => open
        );

end impl1;

