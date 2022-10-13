// We are building for host (TCP Server)
#define TCPBLASTER_HOST

/* Over Ethernet Router */
//#define CONFIG_EXAMPLES_TCPBLASTER_SERVERIP 0x0a2a0018 // CM4 Companion computer IP (10.42.0.24)
//#define CONFIG_EXAMPLES_TCPBLASTER_IPADDR 0x0a2a00b3 // FMUv6x IP (10.42.0.179)
//#define CONFIG_EXAMPLES_TCPBLASTER_DRIPADDR 0x0a2a0001 // Default Router IP (10.42.0.1)

/* Over direct conection */
#define CONFIG_EXAMPLES_TCPBLASTER_SERVERIP 0xa9fe2641 // CM4 Companion computer IP (169.254.38.65)
#define CONFIG_EXAMPLES_TCPBLASTER_IPADDR 0xa9fe2645 // FMUv6x IP (169.254.38.69)
#define CONFIG_EXAMPLES_TCPBLASTER_DRIPADDR 0xa9fe2601 // Default Router IP (169.254.38.1)

// I think used only by the target1 & target 2 (tcpblaster_client.c)
#define CONFIG_EXAMPLES_TCPBLASTER_INIT