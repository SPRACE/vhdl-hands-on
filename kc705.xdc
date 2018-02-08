# KC705 evaluation kit constraints file. For more information, check the user
# guide UG810 available at:
# https://www.xilinx.com/support/documentation/boards_and_kits/kc705/ug810_KC705_Eval_Bd.pdf


# GPIO LEDs
set_property PACKAGE_PIN AB8     [get_ports leds_o[0]]
set_property IOSTANDARD LVCMOS15 [get_ports leds_o[0]]
set_property PACKAGE_PIN AA8     [get_ports leds_o[1]]
set_property IOSTANDARD LVCMOS15 [get_ports leds_o[1]]
set_property PACKAGE_PIN AC9     [get_ports leds_o[2]]
set_property IOSTANDARD LVCMOS15 [get_ports leds_o[2]]
set_property PACKAGE_PIN AB9     [get_ports leds_o[3]]
set_property IOSTANDARD LVCMOS15 [get_ports leds_o[3]]
set_property PACKAGE_PIN AE26    [get_ports leds_o[4]]
set_property IOSTANDARD LVCMOS25 [get_ports leds_o[4]]
set_property PACKAGE_PIN G19     [get_ports leds_o[5]]
set_property IOSTANDARD LVCMOS25 [get_ports leds_o[5]]
set_property PACKAGE_PIN E18     [get_ports leds_o[6]]
set_property IOSTANDARD LVCMOS25 [get_ports leds_o[6]]
set_property PACKAGE_PIN F16     [get_ports leds_o[7]]
set_property IOSTANDARD LVCMOS25 [get_ports leds_o[7]]

# GPIO DIP SW
set_property PACKAGE_PIN Y28     [get_ports switches_i[0]] # SW3
set_property IOSTANDARD LVCMOS25 [get_ports switches_i[0]] # SW3
set_property PACKAGE_PIN AA28    [get_ports switches_i[1]] # SW2
set_property IOSTANDARD LVCMOS25 [get_ports switches_i[1]] # SW2
set_property PACKAGE_PIN W29     [get_ports switches_i[2]] # SW1
set_property IOSTANDARD LVCMOS25 [get_ports switches_i[2]] # SW1
set_property PACKAGE_PIN Y29     [get_ports switches_i[3]] # SW0
set_property IOSTANDARD LVCMOS25 [get_ports switches_i[3]] # SW0

# GPIO PUSHBUTTON SW
set_property PACKAGE_PIN AG5     [get_ports push_buttons[0]] # east
set_property IOSTANDARD LVCMOS15 [get_ports push_buttons[0]] # east
set_property PACKAGE_PIN G12     [get_ports push_buttons[1]] # center
set_property IOSTANDARD LVCMOS25 [get_ports push_buttons[1]] # center
set_property PACKAGE_PIN AC6     [get_ports push_buttons[2]] # west
set_property IOSTANDARD LVCMOS15 [get_ports push_buttons[2]] # west
set_property PACKAGE_PIN AA12    [get_ports push_buttons[3]] # north
set_property IOSTANDARD LVCMOS15 [get_ports push_buttons[3]] # north
set_property PACKAGE_PIN AB12    [get_ports push_buttons[4]] # south
set_property IOSTANDARD LVCMOS15 [get_ports push_buttons[4]] # south


