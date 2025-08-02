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
#include "spi_config.h"
#include "spi_lcd.h"


static const char *TAG = "main";

// spi_lcd_task 任务。初始化 SPI3-LCD，并显示图形。
void spi_lcd_task(void* arg)
{
    // 配置SPI3-主机模式，配置DMA通道、DMA字节大小，及 MISO、MOSI、CLK的引脚。
    spi_master_init(SPI3_HOST, LCD_DEF_DMA_CHAN, LCD_DMA_MAX_SIZE, SPI3_DEF_PIN_NUM_MISO, SPI3_DEF_PIN_NUM_MOSI, SPI3_DEF_PIN_NUM_CLK);
    // lcd-驱动IC初始化（注意：普通GPIO最大只能30MHz，而IOMUX默认的SPI引脚，CLK最大可以设置到80MHz）（注意排线不要太长，高速时可能会花屏）
    spi_lcd_init(SPI3_HOST, 80*1000*1000, LCD_SPI3_DEF_PIN_NUM_CS0);

    // 清屏，用单一底色
    //LCD_Clear(WHITE);
    //LCD_Clear(LIGHTGRAY);
    LCD_Clear(LGRAYBLUE);
    // 画线
	//LCD_DrawLine(0, 0, 240-1, 240-1, RED);
    LCD_DrawLine(0, 0, 135-1, 135-1, RED);
    // 画点
    LCD_DrawPoint(8-1,16-1,RED);

    // 画空心矩形
    LCD_DrawRectangle(30-1, 2-1, 50-1, 20-1, BLUE);
    // 画实心矩形
    LCD_DrawFillRectangle(35-1, 8-1, 36-1, 8-1, BLUE);
    LCD_DrawFillRectangle(35-1, 11-1, 36-1, 12-1, BLUE);
    LCD_DrawFillRectangle(40-1, 10-1, 45-1, 15-1, BLUE);
    LCD_DrawFillRectangle(60-1, 2-1, 75-1, 20-1, BLUE);
    // 画空心圆
    LCD_DrawCircle(60-1, 40-1, 8, RED);
    LCD_DrawCircle(60-1, 40-1, 15, RED);
    LCD_DrawCircle(140-1, 40-1, 20, BLACK);
    LCD_DrawCircle(140-1, 40-1, 2, RED);
    // 画角度线
    LCD_DrawAngleLine(140-1, 40-1, 150, 10, RED);
    LCD_DrawAngleLine(140-1, 40-1, -150, 16, RED);

    // 显示单个字符
    LCD_ShowChar(80-1,0,YELLOW,BLUE,'~',12,0);
    // 显示字符串
    LCD_ShowString(80-1,20-1,YELLOW,BLUE,"Hello!",12,0);
    LCD_ShowString(80-1,40-1,YELLOW,BLUE,"Hello!",12,1);
    // 显示数字
    LCD_ShowNum(80-1,60-1,YELLOW,BLUE,123456,6,12,0);
    LCD_ShowNum(80-1,80-1,YELLOW,BLUE,789,6,16,1);
    LCD_ShowFloat(80-1,100-1,YELLOW,BLUE,3.14159,7,12,1);
    // 显示40*40 QQ图片
    // LCD_ShowPicture_16b(0, 40-1, 40, 40, gImage_qq);

    while(1) {
		vTaskDelay(100 / portTICK_PERIOD_MS);
        // LCD_Clear(LGRAYBLUE);
        // LCD_DrawLine(0, 0, 135-1, 135-1, RED);
        // ESP_LOGI(TAG, "LCD_DrawRectangle");
    }
}

void app_main(void)
{
    // xTaskCreate(ws2812_blink_led, "argb_strip_task", 2048, NULL, 3, NULL);
    // 创建 spi_lcd_task 任务。
    xTaskCreate(spi_lcd_task, "spi_lcd_task", 2048, NULL, 5, NULL);
}
