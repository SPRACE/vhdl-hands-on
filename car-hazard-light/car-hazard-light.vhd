-------------------------------------------------------------------------------
-- Title      : Car Hazard Light
-- Project    : 
-------------------------------------------------------------------------------
-- File       : car-hazard-light.vhd
-- Author     : Vitor Finotti  <vfinotti@vfinotti-desktop.ncc.unesp.br>
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-09
-- Last update: 2018-02-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: The project should emulate a car hazard light. When the switch
-- is turned on, the LED should start blinking at a fixed rate (a suggested
-- rate is two blinks per second).
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


entity car_hazard_light is

    generic (
        g_clk_div : natural := 100e6);  -- num of input clock cycles before toggle the output clock

    port (
        sys_clk_p_i : in  std_logic;
        sys_clk_n_i : in  std_logic;
        switches_i  : in  std_logic_vector(0 downto 0);
        leds_o      : out std_logic_vector(0 downto 0));

end entity car_hazard_light;

architecture rtl of car_hazard_light is

    -- DECLARE THE SIGNALS HERE
    
begin  -- architecture rtl

    -- INSERT YOUR CODE HERE!

end architecture rtl;
