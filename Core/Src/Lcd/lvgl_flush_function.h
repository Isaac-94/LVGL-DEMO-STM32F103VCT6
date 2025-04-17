/*
 * lvgl_flush_function.h
 *
 *  Created on: 18 jul. 2023
 *      Author: Isaac
 */

#include "lvgl.h"
#include "../lvgl/lvgl.h"
#include "../lv_conf.h"

//void ILI9341_flush(struct _disp_drv_t *, const lv_area_t * , lv_color_t * );
void ILI9341_flush(lv_disp_drv_t *, const lv_area_t * , lv_color_t * );
