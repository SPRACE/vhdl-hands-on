-------------------------------------------------------------------------------
-- Title      : Debouncer
-- Project    : 
-------------------------------------------------------------------------------
-- File       : debouncer.vhd
-- Author     : André Cascadan
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-14
-- Last update: 2018-02-14
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Implements a debouncer for an input comming from a mechanical button
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
-- 2018-02-09  1.0      cascadan   Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity debouncer is

    generic (
        g_period : natural := 100    -- num of input clock cycles to consider the button stable
    );  

    port (
        clk_i    : in  std_logic;
        button_i : in  std_logic;
        button_o : out std_logic
    );

end entity debouncer;

architecture rtl of debouncer is

    signal button_delay  : std_logic := '0'; --latches a delayed sample of 'button_i'
    signal counter : natural   := 0;

begin  -- architecture rtl

    -- purpose: 'button_o' receive 'button_i' after counting a stable period
    -- type   : sequential
    -- inputs : clk_i, button_i
    -- outputs: button_o
    process (clk_i) is
    begin  
        if rising_edge(clk_i) then      -- rising clock edge
            
            --delay
            button_delay <= button_i;
        
            --counter
            if ((button_delay xor button_i) = '1') then  -- if button level and its previous sample are different, couter resets
                counter <= 0;
            elsif(counter < g_period) then --incremets until period value
                counter <= counter + 1;
            else          
                button_o <= button_delay; --assigns the stable value to the output
            end if;
            
        end if;
    end process;


end architecture rtl;
