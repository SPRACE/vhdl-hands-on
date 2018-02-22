-------------------------------------------------------------------------------
-- Title      : Sequential LED Blinking
-- Project    : 
-------------------------------------------------------------------------------
-- File       : sequential-led-blinking.vhd
-- Author     : Vitor Finotti  <vfinotti@vfinotti-desktop.ncc.unesp.br>
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-09
-- Last update: 2018-02-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: The KC705 contains a row of 8 LEDs. Each one should be turned
-- on for a second, before it turns of and the next one it turned on and so on.
-- After the last one, the first LED should follow, restarting the cycle.
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

entity sequential_led_blinking is

    generic (
        g_clk_div  : natural := 100e6;
        g_num_leds : natural := 8
        );

    port (
        sys_clk_p_i : in  std_logic;
        sys_clk_n_i : in  std_logic;
        leds_o      : out std_logic_vector(g_num_leds-1 downto 0)
        );
end entity;

architecture rtl of sequential_led_blinking is

    type states is (led0, led1, led2, led3, led4, led5, led6, led7);
    signal present_state : states := led0;

    -- INSERT YOUR SIGNALS HERE

begin  -- architecture rtl

    -- DECLARE YOUR COMPONENTS HERE

    -- INSERT YOUR PROCESS HERE

end architecture rtl;
