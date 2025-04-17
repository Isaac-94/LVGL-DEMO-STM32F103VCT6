#include <stdbool.h>
#include "lvgl.h"
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM32_ADAFRUIT_TS_H
#define __STM32_ADAFRUIT_TS_H

#ifdef __cplusplus
 extern "C" {
#endif   
   
//=============================================================================
/* Setting section (please set the necessary things in this section) */

/* These values can be created using appTouchCalib */
//#define  TS_CINDEX            {-733043, 118151, -25159, -159028623, -22872, 133674, -256558441}
#define  TS_CINDEX            {-1246284, -125601, -12109, 20953205, 22638, -203814, 31488186}

//=============================================================================
/* Interface section */

typedef int32_t ts_cindex[7];

typedef struct
{
  int32_t x0, y0, x1, y1, x2, y2;
}ts_three_points;

typedef struct
{
  uint16_t TouchDetected;
  uint16_t X;
  uint16_t Y;
  uint16_t Z;
}TS_StateTypeDef;

typedef enum 
{
  TS_OK       = 0x00,
  TS_ERROR    = 0x01,
  TS_TIMEOUT  = 0x02
}TS_StatusTypeDef;

uint8_t BSP_TS_Init(uint16_t XSize, uint16_t YSize);
void    BSP_TS_GetState(TS_StateTypeDef *TsState);

/* Touchscreen calibration (calculates cindex array values from three touchscreen point coordinates)
   param:
   - tp : source pointer to three touchscreen coordinates
   - dp : source pointer to three display coordinates
   - ci : result pointer to cindex array (if NULL -> puts it in the current cindex)
   return; cindex values */
void BSP_TS_CalibCalc(ts_three_points * tp, ts_three_points * dp, ts_cindex * ci);

/* Set the current cindex */
void BSP_TS_SetCindex(ts_cindex * ci);

/* Get for current cindex */
void BSP_TS_GetCindex(ts_cindex * ci);

 /*LVGL function*/
bool XPT2046_read(lv_indev_drv_t * drv, lv_indev_data_t*data);

#ifdef __cplusplus
}
#endif

#endif /* __STM32_ADAFRUIT_TS_H */
