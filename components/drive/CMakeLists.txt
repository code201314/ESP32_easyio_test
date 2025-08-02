idf_component_register(SRCS "ws2812_ctrl.c"
                    INCLUDE_DIRS "."
                    REQUIRES espressif__led_strip driver)