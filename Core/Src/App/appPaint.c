#include <stdlib.h>
#include <stdio.h>
#include "main.h"
#include "stm32_adafruit_lcd.h"

/* BSP TS driver */
#include "stm32_adafruit_ts.h"
#include "../../lvgl/lvgl.h"
#include "lvgl_flush_function.h"


//=============================================================================
/* Setting section (please set the necessary things in this section) */

/* Touchscreen calibrate at starting
   - 0: off (for the touchscreen, use the TS_CINDEX values in stm32_adafruit_ts.h)
   - 1: on  (the touchscreen must be calibrated at startup)
   - 2: on and printf (the touchscreen must be calibrated at startup and printf the cindex values)
   - 3: on and displays the TS_CINDEX values on the screen */
#define TS_CALBIBRATE         0

/* If TS_CALBIBRATE == 3 -> Text line size */
#define TS_CALIBTEXTSIZE      12

//=============================================================================
#ifdef  osCMSIS
#define Delay(t)              osDelay(t)
#define GetTime()              osKernelSysTick()
#else
#define Delay(t)              HAL_Delay(t)
#define GetTime()             HAL_GetTick()
#endif

#if TS_CALBIBRATE == 0
#define ts_calib()
#elif TS_CALBIBRATE > 0

#include "ts.h"

#define CALIBDELAY            500
#define CALIBBOXSIZE          6
#define CALIBBOXPOS           15
#define TOUCHDELAY            50

extern  TS_DrvTypeDef         *ts_drv;

//-----------------------------------------------------------------------------
void touchcalib_drawBox(int32_t x, int32_t y, uint16_t cl)
{
  BSP_LCD_SetTextColor(cl);
  BSP_LCD_DrawRect(x - CALIBBOXSIZE / 2, y - CALIBBOXSIZE / 2, CALIBBOXSIZE, CALIBBOXSIZE);
}

//-----------------------------------------------------------------------------
/* Touchscreen calibration function */
void ts_calib(void)
{
  uint16_t tx, ty;
  ts_three_points tc, dc; /* touchscreen and display corrdinates */
  #if TS_CALBIBRATE == 2
  ts_cindex ci;
  #elif TS_CALBIBRATE == 3
  ts_cindex ci;
  static char s[16];
  #endif

  dc.x0 = 20;
  dc.y0 = 20;
  dc.x1 = BSP_LCD_GetXSize() >> 1;
  dc.x2 = BSP_LCD_GetXSize() - 1 - 20;
  dc.y1 = BSP_LCD_GetYSize() - 1 - 20;
  dc.y2 = BSP_LCD_GetYSize() >> 1;

  touchcalib_drawBox(dc.x0, dc.y0, LCD_COLOR_YELLOW);
  Delay(CALIBDELAY);
  while(!ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);
  ts_drv->GetXY(0, &tx, &ty);
  tc.x0 = tx; tc.y0 = ty;

  while(ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);

  touchcalib_drawBox(dc.x0, dc.y0, LCD_COLOR_GRAY);
  touchcalib_drawBox(dc.x1, dc.y1, LCD_COLOR_YELLOW);
  Delay(CALIBDELAY);
  while(!ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);
  ts_drv->GetXY(0, &tx, &ty);
  tc.x1 = tx; tc.y1 = ty;
  while(ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);

  touchcalib_drawBox(dc.x1, dc.y1, LCD_COLOR_GRAY);
  touchcalib_drawBox(dc.x2, dc.y2, LCD_COLOR_YELLOW);
  Delay(CALIBDELAY);
  while(!ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);
  ts_drv->GetXY(0, &tx, &ty);
  tc.x2 = tx; tc.y2 = ty;
  while(ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);

  #if TS_CALBIBRATE == 1
  BSP_TS_CalibCalc(&tc, &dc, NULL);
  #elif TS_CALBIBRATE == 2
  BSP_TS_CalibCalc(&tc, &dc, &ci);
  BSP_TS_SetCindex(&ci);
  printf("\r\n#define  TS_CINDEX            {%d, %d, %d, %d, %d, %d, %d}\r\n", (int)ci[0], (int)ci[1], (int)ci[2], (int)ci[3], (int)ci[4], (int)ci[5], (int)ci[6]);
  #elif TS_CALBIBRATE == 3
  BSP_TS_CalibCalc(&tc, &dc, &ci);
  BSP_TS_SetCindex(&ci);
  BSP_LCD_DisplayStringAt(10, 10, (uint8_t *)"#define TS_CINDEX", LEFT_MODE);
  for(uint32_t i=0; i<7; i++)
  {
    sprintf(s, "%d", (int)ci[i]);
    BSP_LCD_DisplayStringAt(10, i*10+20, (uint8_t *)s, LEFT_MODE);
  }
  Delay(CALIBDELAY);
  while(!ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);
  while(ts_drv->DetectTouch(0))
    Delay(TOUCHDELAY);
  #endif
  Delay(CALIBDELAY);
  BSP_LCD_Clear(LCD_COLOR_BLACK);
}

#endif

static lv_obj_t * kb;
static lv_obj_t * ta;


static void hello_world(void) {
    /*Create a Label on the currently active screen*/
    lv_obj_t *label1 =  lv_label_create(lv_scr_act(), NULL);

    /*Modify the Label's text*/
    lv_label_set_text(label1, "Hello world!");

    /* Align the Label to the center
     * NULL means align on parent (which is the screen now)
     * 0, 0 at the end means an x, y offset after alignment*/
    lv_obj_align(label1, NULL, LV_ALIGN_CENTER, 0, 0);


}

void campodetexto(void)
{
    /*Create styles for the keyboard*/
    static lv_style_t rel_style, pr_style;

    lv_style_copy(&rel_style, &lv_style_btn_rel);
    rel_style.body.radius = 0;
    rel_style.body.border.width = 1;

    lv_style_copy(&pr_style, &lv_style_btn_pr);
    pr_style.body.radius = 0;
    pr_style.body.border.width = 1;

    /*Create a keyboard and apply the styles*/
    lv_obj_t *kb = lv_kb_create(lv_scr_act(), NULL);
    lv_kb_set_cursor_manage(kb, true);
    lv_kb_set_mode(kb, LV_KB_MODE_NUM );
    lv_kb_set_style(kb, LV_KB_STYLE_BG, &lv_style_transp_tight);
    lv_kb_set_style(kb, LV_KB_STYLE_BTN_REL, &rel_style);
    lv_kb_set_style(kb, LV_KB_STYLE_BTN_PR, &pr_style);

    /*Create a text area. The keyboard will write here*/
    lv_obj_t *ta = lv_ta_create(lv_scr_act(), NULL);
    lv_obj_align(ta, NULL, LV_ALIGN_IN_TOP_MID, 0, 10);
    lv_ta_set_text(ta, "");

    /*Assign the text area to the keyboard*/
    lv_kb_set_ta(kb, ta);
}

void mainApp(void)
{
  //definition of ts struct
  lv_init(); //LVGL init
  BSP_LCD_Init();// display initialization
  BSP_TS_Init(BSP_LCD_GetXSize(), BSP_LCD_GetYSize());// Touchscreen initialization

  //Buffer creation and initialization for LVGL
  static lv_disp_buf_t disp_buf;
  static lv_color_t buf_1[LV_HOR_RES_MAX * 10];
  lv_disp_buf_init(&disp_buf, buf_1, NULL, LV_HOR_RES_MAX * 10);



  //function for write a pixel in the area LVGL
  lv_disp_drv_t disp_drv;               /*Descriptor of a display driver*/
  lv_disp_drv_init(&disp_drv);          /*Basic initialization*/
  disp_drv.flush_cb = ILI9341_flush;    /*Set your driver function*/
  disp_drv.buffer = &disp_buf;          /*Assign the buffer to the display*/
  lv_disp_drv_register(&disp_drv);      /*Finally register the driver*/

  //function for read touchscreen

  lv_indev_drv_t indev_drv;                  /*Descriptor of a input device driver*/
  lv_indev_drv_init(&indev_drv);             /*Basic initialization*/
  indev_drv.type = LV_INDEV_TYPE_POINTER;    /*Touch pad is a pointer-like device*/
  indev_drv.read_cb = XPT2046_read;      /*Set your driver function*/
  lv_indev_drv_register(&indev_drv);         /*Finally register the driver*/

  //demo_create();
   campodetexto();
  //hello_world();
  while(1)
  {
	  //Delay(10);
	  lv_task_handler();      //LVGL
	  lv_tick_inc(10);        //LVGL

  }
}


