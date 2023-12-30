#ifndef RTW_VERSION_H
#define RTW_VERSION_H

// Helper macro to convert a macro to a string
#define STR_HELPER(x) #x
#define STR(x) STR_HELPER(x)

// Generate the version string with the current date in the format v5.2.20.2_OHD_20122023
#define CURRENT_DATE __DATE__
#define DRIVERVERSION "v5.2.20.2_OHD_" STR(CURRENT_DATE[4]) STR(CURRENT_DATE[5]) STR(CURRENT_DATE[7]) STR(CURRENT_DATE[8]) STR(CURRENT_DATE[9]) STR(CURRENT_DATE[22]) STR(CURRENT_DATE[23])

#endif // RTW_VERSION_H
