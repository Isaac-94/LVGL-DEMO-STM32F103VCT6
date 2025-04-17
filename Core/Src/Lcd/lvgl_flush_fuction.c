//#include "stm32_adafruit_lcd.c"
#include "ili9341.h"
#include "lvgl_flush_function.h"
#include <stdio.h>

// LCD FRAME Buffer for 1 ROW uint16_t DISP_fb[(MAX(DISP_VER_RES,DISP_HOR_RES))];
  uint16_t DISP_fb[600];


  void ILI9341_flush(lv_disp_drv_t *disp, const lv_area_t *area, lv_color_t *color_p)
  {
      int32_t x, y;
      uint16_t x_size = lv_area_get_width(area);
      uint16_t y_size = lv_area_get_height(area);

      // valores de 16 bits (RGB565)
      ili9341_DrawRGBImage(area->x1, area->y1, x_size, y_size, (uint16_t *)color_p);

      lv_disp_flush_ready(disp);
  }
/*
void ILI9341_flush(lv_disp_drv_t * disp, const lv_area_t * area, lv_color_t * color_p)
{
    int32_t x, y;
  	int indx = 0;
//	setAddrWindow(area->x1, area->y1, area->x2, area->y2);
    for(int y=area->y1;y<=area->y2;y++) {
        for(int x=area->x1;x<=area->x2;x++) {
//        	drawPixel(x, y, color_p->full);
            DISP_fb[indx] = color_p->full;
            color_p++;
            indx++;
        }

        indx = 0;
        //fillFB(area->x1, y, area->x2, y, DISP_fb);
        ili9341_DrawHLine(DISP_fb, area->x1, y, 315);

    }


    lv_disp_flush_ready(disp);
}
*/
