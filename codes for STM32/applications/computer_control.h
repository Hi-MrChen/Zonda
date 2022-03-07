#ifndef COMPUTER_CONTROL_H
#define COMPUTER_CONTROL_H

#include "struct_typedef.h"
#include "bsp_rc.h"

#define BUF_NUM 8u
#define COM_FRAME 4u

typedef struct
{
    int16_t throttle_raw;
    int16_t steering_raw;

} COM_ctrl_t;

extern void computer_control_init(void);
extern const COM_ctrl_t *get_computer_control_point(void);

#endif
