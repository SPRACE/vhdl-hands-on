-------------------------------------------------------------------------------
-- Title      : Clock Divider
-- Project    : 
-------------------------------------------------------------------------------
-- File       : clock-divider.vhd
-- Author     : Vitor Finotti  <vfinotti@vfinotti-desktop.ncc.unesp.br>
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-09
-- Last update: 2018-02-09
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Divides an input clock by a natural number
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
-- Date        Version  Author  Description
-- 2018-02-09  1.0      vfinotti        Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is

    generic (
        g_clk_div : natural := 1);  -- num of input clock cycles before toggle the output clock

    port (
        clk_i : in  std_logic;
        clk_o : out std_logic);

end entity clock_divider;

architecture rtl of clock_divider is

    signal clk     : std_logic := '0';
    signal counter : natural   := 0;

begin  -- architecture rtl

    -- purpose: counts a number of clk_i cycles, toggling clk_o after it
    -- type   : sequential
    -- inputs : clk_i
    -- outputs: clk_o
    divide_clk : process (clk_i) is
    begin  -- process divide_clk
        if rising_edge(clk_i) then      -- rising clock edge
            if (counter < g_clk_div) then
                counter <= counter + 1;
            else
                counter <= 0;
                clk     <= not clk;
            end if;
        end if;
    end process divide_clk;

    clk_o <= clk;

end architecture rtl;
