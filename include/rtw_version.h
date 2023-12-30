#ifndef RTW_VERSION_H
#define RTW_VERSION_H

// Helper macro to convert a macro to a string
#define STR_HELPER(x) #x
#define STR(x) STR_HELPER(x)

// Generate the version string with the current date
#define CURRENT_DATE __DATE__
#define DRIVERVERSION "v5.2.20.2_ohd_" STR(CURRENT_DATE)

#endif // RTW_VERSION_H