# KC705 evaluation kit constraints file. For more information, check the user
# guide UG810 available at:
# https://www.xilinx.com/support/documentation/boards_and_kits/kc705/ug810_KC705_Eval_Bd.pdf

# GPIO LEDs
set_property PACKAGE_PIN AB8     [get_ports GPIO_LED_0_LS]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_0_LS]
set_property PACKAGE_PIN AA8     [get_ports GPIO_LED_1_LS]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_1_LS]
set_property PACKAGE_PIN AC9     [get_ports GPIO_LED_2_LS]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_2_LS]
set_property PACKAGE_PIN AB9     [get_ports GPIO_LED_3_LS]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_3_LS]
set_property PACKAGE_PIN AE26    [get_ports GPIO_LED_4_LS]
set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_4_LS]
set_property PACKAGE_PIN G19     [get_ports GPIO_LED_5_LS]
set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_5_LS]
set_property PACKAGE_PIN E18     [get_ports GPIO_LED_6_LS]
set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_6_LS]
set_property PACKAGE_PIN F16     [get_ports GPIO_LED_7_LS]
set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_7_LS]

# GPIO LCD
set_property PACKAGE_PIN AA13    [get_ports LCD_DB4_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_DB4_LS]
set_property PACKAGE_PIN AA10    [get_ports LCD_DB5_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_DB5_LS]
set_property PACKAGE_PIN AA11    [get_ports LCD_DB6_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_DB6_LS]
set_property PACKAGE_PIN Y10     [get_ports LCD_DB7_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_DB7_LS]
set_property PACKAGE_PIN AB10    [get_ports LCD_E_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_E_LS]
set_property PACKAGE_PIN Y11     [get_ports LCD_RS_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_RS_LS]
set_property PACKAGE_PIN AB13    [get_ports LCD_RW_LS]
set_property IOSTANDARD LVCMOS15 [get_ports LCD_RW_LS]

# GPIO USER SMA
set_property PACKAGE_PIN Y24     [get_ports USER_SMA_GPIO_N]
set_property IOSTANDARD LVCMOS25 [get_ports USER_SMA_GPIO_N]
set_property PACKAGE_PIN Y23     [get_ports USER_SMA_GPIO_P]
set_property IOSTANDARD LVCMOS25 [get_ports USER_SMA_GPIO_P]
