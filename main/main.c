/*
 * @Author: code201314 1162782792@qq.com
 * @Date: 2025-06-08 12:12:45
 * @LastEditors: code201314 1162782792@qq.com
 * @LastEditTime: 2025-08-01 00:00:33
 * @FilePath: \easyio_test\main\main.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "sdkconfig.h"
#include "ws2812_ctrl.h"

// static const char *TAG = "main";

void app_main(void)
{
    while (1) {
        xTaskCreate(ws2812_blink_led, "argb_strip_task", 2048, NULL, 3, NULL);
    }
}
