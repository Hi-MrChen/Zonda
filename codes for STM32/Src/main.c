/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "tim.h"
#include "dma.h"
#include "usart.h"
#include "gpio.h"
#include "spi.h"
#include "remote_control.h"
#include "BMI088driver.h"
#include "bsp_usart.h"

#include <stdio.h>
#include <stdarg.h>
#include "string.h"                    

/* Variants  ------------------------------------------------------- Variants */
const RC_ctrl_t *local_rc_ctrl;
// motor&servor control 
float throttle = 0;
float steering = 0;  
float throttle_OFFSET = 0;
float steering_OFFSET = -6;
// uart transmit
uint8_t throttle_s[6] = "t0000";
uint8_t steering_s[6] = "s0000";
// computer command 
uint8_t throttle_raw[4] = {0};
uint8_t steering_raw[4] = {0};
uint8_t t_flag;
uint8_t s_flag;
// timer
volatile uint32_t TimerCnt;
// imu 
fp32 gyro[3], accel[3], temp;
char gyro_s[3][33], accel_s[3][33], temp_s[33]; 
/* Variants  ------------------------------------------------------- Variants */


/* Function utils --------------------------------------------------- Functions utils*/
uint8_t length(uint8_t a[]){
  uint8_t i=0;
  while(a[i] != '\0'){
    i++;
  }
  return i;
}
double fabs(float x){
	if(x >= 0){
		return x;
	}
	else{
		return (-1*x);
	}		
}
int sgn(float x){
	if(x > 0){
		return 1;
	}
	else if(x < 0){
		return -1;
	}
	else{
		return 0;
	}
}
float process(uint8_t data_raw[]){
  float data = 0;
  uint8_t i = 0;

  for(i = 0;i<4;i++){
    data = data * 10 + data_raw[i] - '0';
  }
  data = data - 1000;
  data = data/10; 

  return data;
}
void float2int(uint8_t string[], float value){
  uint16_t copy = (uint16_t)(value * 10 + 1000);                  // range: 0 - 2000 

  string[4] = '0'+ copy % 10;  // 小数点后一位
    
  copy = copy / 10;           
  string[3] = '0'+ copy % 10;  // 个位
  copy = copy / 10;
  string[2] = '0'+ copy % 10;  // 十位
  copy = copy / 10;
  string[1] = '0'+ copy % 10;  // 百位

}
uint32_t GetTime(void){
	return (uint32_t)(htim2.Instance->CNT + TimerCnt * 5000);
}
/* Function utils --------------------------------------------------- Functions utils*/

/* IMU output ---------------------------------------------------------- Imu output */
void IMU_read(){
  BMI088_read(gyro, accel, &temp);
    sprintf(gyro_s[0], "%f", gyro[0]);
    sprintf(gyro_s[1], "%f", gyro[1]);
    sprintf(gyro_s[2], "%f", gyro[2]);
    sprintf(accel_s[0], "%f", accel[0]);
    sprintf(accel_s[1], "%f", accel[1]);
    sprintf(accel_s[2], "%f", accel[2]);
    sprintf(temp_s, "%f", temp);

  HAL_UART_Transmit(&huart1, "gyro:", 6, 100);
  HAL_UART_Transmit(&huart1, gyro_s[0], 33, 100);
  HAL_UART_Transmit(&huart1, ", ", 3, 100);
  HAL_UART_Transmit(&huart1, gyro_s[1], 33, 100);
  HAL_UART_Transmit(&huart1, ", ", 3, 100);
  HAL_UART_Transmit(&huart1, gyro_s[2], 33, 100);
  HAL_UART_Transmit(&huart1, "\n", 2, 100);

  HAL_UART_Transmit(&huart1, "accel:", 6, 100);
  HAL_UART_Transmit(&huart1, accel_s[0], 33, 100);
  HAL_UART_Transmit(&huart1, ", ", 3, 100);
  HAL_UART_Transmit(&huart1, accel_s[1], 33, 100);
  HAL_UART_Transmit(&huart1, ", ", 3, 100);
  HAL_UART_Transmit(&huart1, accel_s[2], 33, 100);
  HAL_UART_Transmit(&huart1, "\n", 2, 100);

  HAL_UART_Transmit(&huart1, "temp:", 5, 100);
  HAL_UART_Transmit(&huart1, temp_s, 33, 100);
  HAL_UART_Transmit(&huart1, "\n", 2, 100);

}
/* IMU output ---------------------------------------------------------- Imu output */

/* Motor&Servo output ----------------------------------------------  Motor&Servo output */  
void throttle_Output(float throttle, float k, float offset){    // u : -100 ~ 100


  int T;
  if(fabs(throttle) < 20){
    T = sgn(throttle) * fabs(throttle) * 0.5 * 10*k + 1500 + offset*10; 
  }
  else if(fabs(throttle) < 40){
    T = sgn(throttle) * ((fabs(throttle) - 20) * 0.7 + 10) * 10*k + 1500 + offset*10; 
  }
  else if(fabs(throttle) < 60){
    T = sgn(throttle) * ((fabs(throttle) - 40) * 1 + 24) * 10*k + 1500 + offset*10; 
  }
  else if(fabs(throttle) < 80){
    T = sgn(throttle) * ((fabs(throttle) - 60) * 1.3 + 44) * 10*k + 1500 + offset*10; 
  }
  else{
    T = sgn(throttle) * ((fabs(throttle) - 80) * 1.5 + 70) * 10*k + 1500 + offset*10; 
  }


  __HAL_TIM_SetCompare(&htim1, TIM_CHANNEL_2, T) ;
}
void servo_Output(float steering, float k, float offset){   // steering: -100 ~ 100 
  int  T;

  if(fabs(steering) < 20){
    T = sgn(steering) * fabs(steering) * 0.5 * 10*k + 1500 + offset*10; 
  }
  else if(fabs(steering) < 40){
    T = sgn(steering) * ((fabs(steering) - 20) * 0.7 + 10) * 10*k + 1500 + offset*10; 
  }
  else if(fabs(steering) < 60){
    T = sgn(steering) * ((fabs(steering) - 40) * 1 + 24) * 10*k + 1500 + offset*10; 
  }
  else if(fabs(steering) < 80){
    T = sgn(steering) * ((fabs(steering) - 60) * 1.3 + 44) * 10*k + 1500 + offset*10; 
  }
  else{
    T = sgn(steering) * ((fabs(steering) - 80) * 1.5 + 70) * 10*k + 1500 + offset*10; 
  }

  __HAL_TIM_SetCompare(&htim1, TIM_CHANNEL_1, T);
}
/* Motor&Servo output ----------------------------------------------  Motor&Servo output */  

/* Interupt Process ------------------------------------------------- Interrupt Proess */
void USART1_IRQHandler(void)  
{
    volatile uint8_t data;
    //receive interrupt 
    if(huart1.Instance->SR & UART_FLAG_RXNE)
    {
        data = huart1.Instance->DR; 
        switch (data)
        {
        case 't':
          t_flag = 1;
          s_flag = 0;
          memset(throttle_raw, 0, 4);
          break;
        
        case 's':
          s_flag = 1;
          t_flag = 0;
          memset(steering_raw, 0, 4);
          break;
        
        case '0':case '1':case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9': 
          
          if(t_flag == 1){
            uint8_t len = length(throttle_raw);

            if(len == 4){
              break;
            }

            throttle_raw[len] = data; 
          }
          else if(s_flag == 1){
            
            uint8_t len = length(steering_raw);

            if(len == 4){
              break;
            }

            steering_raw[len] = data; 
          }
          break;

          default:
           break;
        }
			
    }

    //idle interrupt 
    // else if(huart1.Instance->SR & UART_FLAG_IDLE)
    // {
    //     // receive = huart1.Instance->DR;
    //     HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_RESET);
    // }

}
void USART6_IRQHandler(void)  
{

    volatile uint8_t receive;
    //receive interrupt 
    if(huart6.Instance->SR & UART_FLAG_RXNE)
    {
        receive = huart6.Instance->DR;
        HAL_GPIO_TogglePin(LED_B_GPIO_Port, LED_B_Pin);

    }
    //idle interrupt 
    else if(huart6.Instance->SR & UART_FLAG_IDLE)
    {
        receive = huart6.Instance->DR;
        HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_Pin, GPIO_PIN_RESET);
    }


}
void TIM2_IRQHandler(void)
{
  /* USER CODE BEGIN TIM2_IRQn 0 */

  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
  /* USER CODE BEGIN TIM2_IRQn 1 */
	TimerCnt++;
  /* USER CODE END TIM2_IRQn 1 */
}
/* Interupt Process ------------------------------------------------- Interrupt Proess */


void SystemClock_Config(void);

int main(void)
{ 
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();

  MX_USART1_UART_Init();
  MX_USART6_UART_Init();
  MX_USART3_UART_Init();
    __HAL_UART_ENABLE_IT(&huart1, UART_IT_RXNE);  //receive interrupt
    // __HAL_UART_ENABLE_IT(&huart1, UART_IT_IDLE);  //idle interrupt
    //__HAL_UART_ENABLE_IT(&huart6, UART_IT_RXNE);  //receive interrupt
    //__HAL_UART_ENABLE_IT(&huart6, UART_IT_IDLE);  //idle interrupt

  remote_control_init();    // uart3 
  //usart1_tx_dma_init();     
  local_rc_ctrl = get_remote_control_point(); 
  // LED light off
    // HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_RESET);
    // HAL_GPIO_WritePin(LED_G_GPIO_Port, LED_G_Pin, GPIO_PIN_RESET);
    // HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_Pin, GPIO_PIN_RESET); 

  // TIM
  MX_TIM1_Init();           // PWM control 
    HAL_TIM_Base_Start(&htim1);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
	MX_TIM2_Init();           // Timer 
		HAL_TIM_Base_Start_IT(&htim2);
		HAL_TIM_Base_Start(&htim2);
  MX_TIM10_Init();          // Spi -> imu
  while(BMI088_init())
  {
    ;
    // HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_SET);  // IMU_init fail：set Red light;
    // HAL_Delay(2000); 
  }
  
  HAL_GPIO_WritePin(LED_G_GPIO_Port, LED_G_Pin, GPIO_PIN_SET);  // set Green light
  
  while(1)
  {
    //** frequency
    HAL_Delay(18); // 50 Hz
    char channel = local_rc_ctrl->rc.s[0];
    IMU_read(); 

    uint32_t t1 = GetTime();
    char t1_s[100];
    sprintf(t1_s, "%d", t1);
    HAL_UART_Transmit(&huart1, "time", 5, 100);
    HAL_UART_Transmit(&huart1, t1_s, 100, 100);
    HAL_UART_Transmit(&huart1, "\n", 2, 100);
    
    /* low speed remote control ------------------------------------------------------------- */
    if(channel == 3){
			
        uint32_t t1 = GetTime();
			  char t1_s[100];
				sprintf(t1_s, "%d", t1);
				HAL_UART_Transmit(&huart1, "time", 5, 100);
				HAL_UART_Transmit(&huart1, t1_s, 100, 100);
				HAL_UART_Transmit(&huart1, "\n", 2, 100);

       /* Control : motor and servo ---------------------------------------- */
        throttle = local_rc_ctrl->rc.ch[3] * 100 * 1.0/660;
        steering = local_rc_ctrl->rc.ch[0] * 100 * 1.0/660; 
        
        float2int(throttle_s, throttle);
        float2int(steering_s, steering);
        
        uint8_t i = 0;
        char concat[10] = {0}; 
        for(i=1;i<5;i++){
          concat[i-1] = throttle_s[i];
          concat[i+3] = steering_s[i];
        }
        HAL_UART_Transmit(&huart1, concat, 8, 100);

        throttle_Output(throttle, 0.6, throttle_OFFSET);
        servo_Output(steering, 0.3, steering_OFFSET);
				
			  // uint32_t t2 = GetTime();
			  // char t2_s[100];
				// sprintf(t2_s, "%d", t2);
				// HAL_UART_Transmit(&huart1, "time", 5, 100);
				// HAL_UART_Transmit(&huart1, t2_s, 100, 100);
				// HAL_UART_Transmit(&huart1, "\n", 2, 100);
				
    } 

    /* high speed remote control ------------------------------------------------------------- */
    else if(channel == 2){
       /* Control : motor and servo ---------------------------------------- */
        throttle = local_rc_ctrl->rc.ch[3] * 100 * 1.0/660;
        steering = local_rc_ctrl->rc.ch[0] * 100 * 1.0/660; 

        throttle_Output(throttle, 0.95, throttle_OFFSET); 
        servo_Output(steering, 0.3, steering_OFFSET);

    }

    /* Computer control  -------------------------------------------------------- */
    else{
      
      if(length(throttle_raw) == 4){
        throttle = process(throttle_raw);
      }

      if(length(steering_raw) == 4){
        steering = process(steering_raw);
      }
      
      throttle_Output(throttle, 0.3, throttle_OFFSET); 
      servo_Output(steering, 0.3, steering_OFFSET);
	
    }

  }

}

void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 6;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */