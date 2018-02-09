-------------------------------------------------------------------------------
-- Title      : Sequential LED Blinking
-- Project    : 
-------------------------------------------------------------------------------
-- File       : sequential-led-blinking.vhd
-- Author     : Vitor Finotti  <vfinotti@vfinotti-desktop.ncc.unesp.br>
-- Company    : Sao Paulo Research and Analysis Center,  SPRACE
-- Created    : 2018-02-09
-- Last update: 2018-02-09
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

    signal sys_clk : std_logic := '0';
    signal clk_div : std_logic := '0';

    signal leds : std_logic_vector(g_num_leds-1 downto 0) := "00000000";

begin  -- architecture rtl

    clk_gen_1 : entity work.clk_gen
        port map (
            sys_clk_p_i => sys_clk_p_i,
            sys_clk_n_i => sys_clk_n_i,
            sys_clk_o   => sys_clk);

    clock_divider_1 : entity work.clock_divider
        generic map (
            g_clk_div => g_clk_div)
        port map (
            clk_i => sys_clk,
            clk_o => clk_div);

    -- State machine to blink one LED per state
    -- type   : sequential
    -- inputs : clk_div
    -- outputs: leds_o
    fsm_sequence : process (clk_div) is
    begin  -- process fsm_sequence
        if rising_edge(clk_div) then    -- rising clock edge
            case present_state is
                when led0 =>
                    present_state <= led1;
                    leds          <= "01000000";
                when led1 =>
                    present_state <= led2;
                    leds          <= "00100000";
                when led2 =>
                    present_state <= led3;
                    leds          <= "00010000";
                when led3 =>
                    present_state <= led4;
                    leds          <= "00001000";
                when led4 =>
                    present_state <= led5;
                    leds          <= "00000100";
                when led5 =>
                    present_state <= led6;
                    leds          <= "00000010";
                when led6 =>
                    present_state <= led7;
                    leds          <= "00000001";
                when led7 =>
                    present_state <= led0;
                    leds          <= "10000000";
                when others =>
                    present_state <= led0;
                    leds          <= "10000000";
            end case;
        end if;

        leds_o <= leds;
    end process fsm_sequence;

end architecture rtl;
