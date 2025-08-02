#ifndef WS2812_CTRL_H
#define WS2812_CTRL_H

#ifdef __cplusplus
extern "C" {
#endif

// Add your declarations here
int8_t ws2812_driver_init(void);
void ws2812_blink_led(void* arg);

#ifdef __cplusplus
}
#endif

#endif // WS2812_CTRL_H