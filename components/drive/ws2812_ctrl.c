#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "ws2812_ctrl.h"
#include "led_strip.h"
#include "driver/gpio.h"
#include "sys_config.h"
#include "sdkconfig.h"
#include "esp_log.h"

static const char *TAG = "was2812_ctrl";


led_strip_handle_t configure_led(void)
{
    // LED strip general initialization, according to your led board design
    led_strip_config_t strip_config = {
        .strip_gpio_num = LED_STRIP_BLINK_GPIO,   // The GPIO that connected to the LED strip's data line
        .max_leds = LED_STRIP_LED_NUMBERS,        // The number of LEDs in the strip,
        .led_pixel_format = LED_PIXEL_FORMAT_GRB, // Pixel format of your LED strip
        .led_model = LED_MODEL_WS2812,            // LED strip model
        .flags.invert_out = false,                // whether to invert the output signal
    };

    // LED strip backend configuration: SPI
    led_strip_spi_config_t spi_config = {
        .clk_src = SPI_CLK_SRC_DEFAULT, // different clock source can lead to different power consumption
        .flags.with_dma = true,         // Using DMA can improve performance and help drive more LEDs
        .spi_bus = SPI2_HOST,           // SPI bus ID
    };

    // LED Strip object handle
    led_strip_handle_t led_strip;
    ESP_ERROR_CHECK(led_strip_new_spi_device(&strip_config, &spi_config, &led_strip));
    ESP_LOGI(TAG, "Created LED strip object with SPI backend");
    return led_strip;
}

/**
*@brief 简单的辅助函数，将 HSV 颜色空间转换为 RGB 颜色空间
*
*@param h 色相值，范围为[0,360]
*@param s 饱和度值，范围为[0,100]
*@param v 亮度值，范围为[0,100]
*@param r 指向存储红色值的指针
*@param g 指向存储绿色值的指针
*@param b 指向存储蓝色值的指针
*
*/
void led_strip_hsv2rgb(uint32_t h, uint32_t s, uint32_t v, uint32_t *r, uint32_t *g, uint32_t *b)
{
    h %= 360; // h -> [0,360]
    uint32_t rgb_max = v * 2.55f;
    uint32_t rgb_min = rgb_max * (100 - s) / 100.0f;

    uint32_t i = h / 60;
    uint32_t diff = h % 60;

    // RGB adjustment amount by hue
    uint32_t rgb_adj = (rgb_max - rgb_min) * diff / 60;

    switch (i) {
    case 0:
        *r = rgb_max;
        *g = rgb_min + rgb_adj;
        *b = rgb_min;
        break;
    case 1:
        *r = rgb_max - rgb_adj;
        *g = rgb_max;
        *b = rgb_min;
        break;
    case 2:
        *r = rgb_min;
        *g = rgb_max;
        *b = rgb_min + rgb_adj;
        break;
    case 3:
        *r = rgb_min;
        *g = rgb_max - rgb_adj;
        *b = rgb_max;
        break;
    case 4:
        *r = rgb_min + rgb_adj;
        *g = rgb_min;
        *b = rgb_max;
        break;
    default:
        *r = rgb_max;
        *g = rgb_min;
        *b = rgb_max - rgb_adj;
        break;
    }
}

/**
 * @brief Initialize the WS2812 driver.
 * 
 * This function initializes the WS2812 driver by configuring the LED strip
 * and setting up the necessary parameters for operation.
 * 
 * @return int8_t Returns 0 on success, or a negative error code on failure.
 */
int8_t ws2812_driver_init(void)
{
    // Initialize the LED strip
    led_strip_handle_t led_strip = configure_led();
    if (led_strip == NULL) {
        ESP_LOGE(TAG, "Failed to create LED strip object");
        return -1; // Initialization failed
    }

    ESP_LOGI(TAG, "LED strip initialized successfully");
    return 0; // Initialization successful
}

void ws2812_blink_led(void* arg)
{
    led_strip_handle_t led_strip = configure_led();
    static uint16_t hue = 0;

    ESP_LOGI(TAG, "Start blinking LED strip");
    while (1) {
        for (int i = 0; i < LED_STRIP_LED_NUMBERS; i++) {
            uint16_t led_hue = hue + (i * 360 / LED_STRIP_LED_NUMBERS);
            led_hue %= 360; // 确保色相值在0-359范围内
            ESP_ERROR_CHECK(led_strip_set_pixel_hsv(led_strip, i, led_hue, 255, 10));
            // ESP_LOGI(TAG, "i: %d  led_hue: %d", i, led_hue);
        }
        ESP_ERROR_CHECK(led_strip_refresh(led_strip));
        hue = (hue + 1) % 360;
        vTaskDelay(pdMS_TO_TICKS(100));
    }
}

