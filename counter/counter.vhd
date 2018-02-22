-------------------------------------------------------------------------------
-- Title      : Counter
-- Project    : 
-------------------------------------------------------------------------------
-- File       : debouncer.vhd
-- Author     : André Cascadan
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-15
-- Last update: 2018-02-15
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: implements a set of leds representing a binary number which implements 
-- when button is pressed.
-------------------------------------------------------------------------------
-- Copyright (c) 2018 Sao Paulo Research and Analysis Center,  SPRACE

-- This program is free software: you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public License
-- as published by the Free Software Foundation, either version 3 of
-- the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public
-- License along with this program. If not, see
-- <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author     Description
-- 2018-02-15  1.0      cascadan   Created
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( sys_clk_p_i : in STD_LOGIC;
           sys_clk_n_i : in STD_LOGIC;
           push_buttons_i : in STD_LOGIC_VECTOR (0 downto 0);
           leds_o : out STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is
  
    --internal signals
    signal sys_clk : std_logic;
    signal button : std_logic;
    signal button_dly : std_logic;
    signal counter : std_logic_vector(3 downto 0):="0000";

begin

    clk_gen_1 : entity work.clk_gen
        port map (
            sys_clk_p_i => sys_clk_p_i,
            sys_clk_n_i => sys_clk_n_i,
            sys_clk_o   => sys_clk
        );

    debouncer_1 : entity work.debouncer
        generic map (
            g_period => 1e6
        )
        port map (
            clk_i    =>  sys_clk,
            button_i =>  push_buttons_i(0),
            button_o =>  button
        ); 

        
    process (sys_clk) is
    begin
    
        if rising_edge(sys_clk) then
            
            button_dly <= button;
            
            if ((button and (not button_dly)) = '1') then
                counter <= std_logic_vector(unsigned(counter) + 1);
            end if;
        
        end if;
        
    end process;       

    leds_o <= counter;

end Behavioral;
