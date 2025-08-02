idf_component_register(SRCS 
                            "ws2812_ctrl.c"
                            "spi_config.c"
                            "spi_lcd.c"
                            "simple_gui.c"
                    INCLUDE_DIRS "."
                    # REQUIRES driver)
                    REQUIRES espressif__led_strip driver)