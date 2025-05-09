/**
 * @file lv_group.h
 *
 */

#ifndef LV_GROUP_H
#define LV_GROUP_H

#ifdef __cplusplus
extern "C" {
#endif

/*********************
 *      INCLUDES
 *********************/
#ifdef LV_CONF_INCLUDE_SIMPLE
#include "lv_conf.h"
#else
#include "../../../lv_conf.h"
#endif

#include "../../../lvgl/src/lv_core/lv_obj.h"

/*********************
 *      DEFINES
 *********************/
/*Predefined keys to control the focused object via lv_group_send(group, c)*/
/*For compatibility in signal function define the keys regardless to `LV_USE_GROUP`*/

enum {
    LV_KEY_UP        = 17,  /*0x11*/
    LV_KEY_DOWN      = 18,  /*0x12*/
    LV_KEY_RIGHT     = 19,  /*0x13*/
    LV_KEY_LEFT      = 20,  /*0x14*/
    LV_KEY_ESC       = 27,  /*0x1B*/
    LV_KEY_DEL       = 127, /*0x7F*/
    LV_KEY_BACKSPACE = 8,   /*0x08*/
    LV_KEY_ENTER     = 10,  /*0x0A, '\n'*/
    LV_KEY_NEXT      = 9,   /*0x09, '\t'*/
    LV_KEY_PREV      = 11,  /*0x0B, '*/
    LV_KEY_HOME      = 2,   /*0x02, STX*/
    LV_KEY_END       = 3,   /*0x03, ETX*/
};
typedef uint8_t lv_key_t;

#if LV_USE_GROUP != 0
/**********************
 *      TYPEDEFS
 **********************/
struct _lv_group_t;

typedef void (*lv_group_style_mod_cb_t)(struct _lv_group_t *, lv_style_t *);
typedef void (*lv_group_focus_cb_t)(struct _lv_group_t *);

/**
 * Groups can be used to logically hold objects so that they can be individually focused.
 * They are NOT for laying out objects on a screen (try `lv_cont` for that).
 */
typedef struct _lv_group_t
{
    lv_ll_t obj_ll;        /**< Linked list to store the objects in the group */
    lv_obj_t ** obj_focus; /**< The object in focus*/

    lv_group_style_mod_cb_t style_mod_cb;      /**< A function to modifies the style of the focused object*/
    lv_group_style_mod_cb_t style_mod_edit_cb; /**< A function which modifies the style of the edited object*/
    lv_group_focus_cb_t focus_cb;              /**< A function to call when a new object is focused (optional)*/
    lv_style_t style_tmp;                      /**< Stores the modified style of the focused object */
#if LV_USE_USER_DATA
    lv_group_user_data_t user_data;
#endif

    uint8_t frozen : 1;         /**< 1: can't focus to new object*/
    uint8_t editing : 1;        /**< 1: Edit mode, 0: Navigate mode*/
    uint8_t click_focus : 1;    /**< 1: If an object in a group is clicked by an indev then it will be
                                   focused */
    uint8_t refocus_policy : 1; /**< 1: Focus prev if focused on deletion. 0: Focus next if focused on
                                   deletion.*/
    uint8_t wrap : 1;           /**< 1: Focus next/prev can wrap at end of list. 0: Focus next/prev stops at end
                                   of list.*/
} lv_group_t;

enum { LV_GROUP_REFOCUS_POLICY_NEXT = 0, LV_GROUP_REFOCUS_POLICY_PREV = 1 };
typedef uint8_t lv_group_refocus_policy_t;

/**********************
 * GLOBAL PROTOTYPES
 **********************/

/**
 * Init. the group module
 * @remarks Internal function, do not call directly.
 */
void lv_group_init(void);

/**
 * Create a new object group
 * @return pointer to the new object group
 */
lv_group_t * lv_group_create(void);

/**
 * Delete a group object
 * @param group pointer to a group
 */
void lv_group_del(lv_group_t * group);

/**
 * Add an object to a group
 * @param group pointer to a group
 * @param obj pointer to an object to add
 */
void lv_group_add_obj(lv_group_t * group, lv_obj_t * obj);

/**
 * Remove an object from its group
 * @param obj pointer to an object to remove
 */
void lv_group_remove_obj(lv_obj_t * obj);

/**
 * Remove all objects from a group
 * @param group pointer to a group
 */
void lv_group_remove_all_objs(lv_group_t * group);

/**
 * Focus on an object (defocus the current)
 * @param obj pointer to an object to focus on
 */
void lv_group_focus_obj(lv_obj_t * obj);

/**
 * Focus the next object in a group (defocus the current)
 * @param group pointer to a group
 */
void lv_group_focus_next(lv_group_t * group);

/**
 * Focus the previous object in a group (defocus the current)
 * @param group pointer to a group
 */
void lv_group_focus_prev(lv_group_t * group);

/**
 * Do not let to change the focus from the current object
 * @param group pointer to a group
 * @param en true: freeze, false: release freezing (normal mode)
 */
void lv_group_focus_freeze(lv_group_t * group, bool en);

/**
 * Send a control character to the focuses object of a group
 * @param group pointer to a group
 * @param c a character (use LV_KEY_.. to navigate)
 * @return result of focused object in group.
 */
lv_res_t lv_group_send_data(lv_group_t * group, uint32_t c);

/**
 * Set a function for a group which will modify the object's style if it is in focus
 * @param group pointer to a group
 * @param style_mod_cb the style modifier function pointer
 */
void lv_group_set_style_mod_cb(lv_group_t * group, lv_group_style_mod_cb_t style_mod_cb);

/**
 * Set a function for a group which will modify the object's style if it is in focus in edit mode
 * @param group pointer to a group
 * @param style_mod_edit_cb the style modifier function pointer
 */
void lv_group_set_style_mod_edit_cb(lv_group_t * group, lv_group_style_mod_cb_t style_mod_edit_cb);

/**
 * Set a function for a group which will be called when a new object is focused
 * @param group pointer to a group
 * @param focus_cb the call back function or NULL if unused
 */
void lv_group_set_focus_cb(lv_group_t * group, lv_group_focus_cb_t focus_cb);

/**
 * Set whether the next or previous item in a group is focused if the currently focussed obj is
 * deleted.
 * @param group pointer to a group
 * @param new refocus policy enum
 */
void lv_group_set_refocus_policy(lv_group_t * group, lv_group_refocus_policy_t policy);

/**
 * Manually set the current mode (edit or navigate).
 * @param group pointer to group
 * @param edit: true: edit mode; false: navigate mode
 */
void lv_group_set_editing(lv_group_t * group, bool edit);

/**
 * Set the `click_focus` attribute. If enabled then the object will be focused then it is clicked.
 * @param group pointer to group
 * @param en: true: enable `click_focus`
 */
void lv_group_set_click_focus(lv_group_t * group, bool en);

/**
 * Set whether focus next/prev will allow wrapping from first->last or last->first object.
 * @param group pointer to group
 * @param en: true: wrapping enabled; false: wrapping disabled
 */
void lv_group_set_wrap(lv_group_t * group, bool en);

/**
 * Modify a style with the set 'style_mod' function. The input style remains unchanged.
 * @param group pointer to group
 * @param style pointer to a style to modify
 * @return a copy of the input style but modified with the 'style_mod' function
 */
lv_style_t * lv_group_mod_style(lv_group_t * group, const lv_style_t * style);

/**
 * Get the focused object or NULL if there isn't one
 * @param group pointer to a group
 * @return pointer to the focused object
 */
lv_obj_t * lv_group_get_focused(const lv_group_t * group);

#if LV_USE_USER_DATA
/**
 * Get a pointer to the group's user data
 * @param group pointer to an group
 * @return pointer to the user data
 */
lv_group_user_data_t * lv_group_get_user_data(lv_group_t * group);

#endif

/**
 * Get a the style modifier function of a group
 * @param group pointer to a group
 * @return pointer to the style modifier function
 */
lv_group_style_mod_cb_t lv_group_get_style_mod_cb(const lv_group_t * group);

/**
 * Get a the style modifier function of a group in edit mode
 * @param group pointer to a group
 * @return pointer to the style modifier function
 */
lv_group_style_mod_cb_t lv_group_get_style_mod_edit_cb(const lv_group_t * group);

/**
 * Get the focus callback function of a group
 * @param group pointer to a group
 * @return the call back function or NULL if not set
 */
lv_group_focus_cb_t lv_group_get_focus_cb(const lv_group_t * group);

/**
 * Get the current mode (edit or navigate).
 * @param group pointer to group
 * @return true: edit mode; false: navigate mode
 */
bool lv_group_get_editing(const lv_group_t * group);

/**
 * Get the `click_focus` attribute.
 * @param group pointer to group
 * @return true: `click_focus` is enabled; false: disabled
 */
bool lv_group_get_click_focus(const lv_group_t * group);

/**
 * Get whether focus next/prev will allow wrapping from first->last or last->first object.
 * @param group pointer to group
 * @param en: true: wrapping enabled; false: wrapping disabled
 */
bool lv_group_get_wrap(lv_group_t * group);

/**
 * Notify the group that current theme changed and style modification callbacks need to be
 * refreshed.
 * @param group pointer to group. If NULL then all groups are notified.
 */
void lv_group_report_style_mod(lv_group_t * group);

/**********************
 *      MACROS
 **********************/

#endif /*LV_USE_GROUP != 0*/

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /*LV_GROUP_H*/
