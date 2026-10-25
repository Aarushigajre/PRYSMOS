#include <stdint.h>

#define UART_BASE 0x09000000UL

void kernel_main(void) {
  char *str = "Welcome to PRYSMOS!";

  while (*str) {
    *(volatile uint32_t *)UART_BASE = *str++;
  }

  while (1) {
    // infinite while loop
  }
}
