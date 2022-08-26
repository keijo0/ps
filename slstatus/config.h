const unsigned int interval = 1000;
static const char unknown_str[] = "n/a";
#define MAXLEN 2048

static const struct arg args[] = {
	{ run_command, "%s | ", "acpi" },
	{ run_command, "%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ cpu_perc, " CPU %s%% ", NULL	},
	{ temp, "%s\u00b0C", "/sys/class/thermal/thermal_zone0/temp" },
	{ ram_perc, "|  RAM %s%% | ", NULL	},
//	{ disk_perc, " ROOT %s%% | ", "/" },
//	{ uptime,   " UPTIME %s | ", NULL },
//	{ kernel_release, "%s | ", NULL },
	{ datetime, 	" %s",    "%B %d %a %T" },
};

/*static const struct arg args[] = {
        { run_command, ":%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ datetime, 	"%s",    "%b %d %a %T" },
};*/
