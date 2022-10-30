const unsigned int interval = 1000;
static const char unknown_str[] = "n/a";
#define MAXLEN 2048

static const struct arg args[] = {
//	{ netspeed_rx, ": %sB/s | ",  "eno1" },
//	{ netspeed_tx, " : %sB/s | ",  "eno1" },
//	{ run_command, "%s | ", "acpi" },
//	{ run_command, "tty: %s | ", "who | grep tty | wc -l" },
//	{ wifi_perc, " %s | ", "wlan1" },
	{ run_command, "%s | ", "playerctl metadata --format '{{ artist }} - {{ album }} - {{ title }}'", },
//	{ run_command, "ssh: %s | ", "who | grep pts | wc -l" },
	{ run_command, " %4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ cpu_perc, " CPU %s%% ", NULL	},
	{ cpu_freq, " %sHz ", NULL },
	{ temp, "%s\u00b0C ", "/sys/class/thermal/thermal_zone0/temp" },
	//{ load_avg, "%s | ", NULL },
	{ run_command, "(%s) | ", "threads" }, 
	{ ram_perc, " RAM %s%% | ", NULL	},
	{ disk_perc, " ROOT %s%% | ", "/" },
	{ run_command, " PACKAGES %s | ", "qlist -I | wc -l" },
	{ uptime,   "  UPTIME %s | ", NULL },
	{ kernel_release, "%s | ", NULL },
	{ keymap, " %s | ", NULL },
	{ datetime, 	" %s",    "%B %d %a %T" },
};
