-------------------------------------------------------------------------------
-- Title      : Pattern Checker
-- Project    : 
-------------------------------------------------------------------------------
-- File       : pattern-checker.vhd
-- Author     : Vitor Finotti  <vfinotti@vfinotti-desktop.ncc.unesp.br>
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-08
-- Last update: 2018-02-09
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: In this this project, the LED will only blink when the push
-- buttons are pressed in a patter that matches the switches'.
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
-- Date        Version  Author          Description
-- 2018-02-08  1.0      vfinotti        Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity pattern_checker is

    generic (
        g_input_width : natural := 3);  -- num of switches and push-buttons

    port (
        push_buttons_i : in  std_logic_vector(g_input_width-1 downto 0);
        switches_i     : in  std_logic_vector(g_input_width-1 downto 0);
        leds_o         : out std_logic_vector(0 downto 0));

end entity pattern_checker;

architecture rtl of pattern_checker is

begin  -- architecture rtl

    leds_o(0) <=     (switches_i(0) xnor push_buttons_i(0))
                 and (switches_i(1) xnor push_buttons_i(1))
                 and (switches_i(2) xnor push_buttons_i(2));

end architecture rtl;
