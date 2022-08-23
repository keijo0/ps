const unsigned int interval = 1000;
static const char unknown_str[] = "n/a";
#define MAXLEN 2048

static const struct arg args[] = {
//    	{ netspeed_rx, ": %sB/s | ",  "eno1" },
//        { netspeed_tx, " : %sB/s | ",  "eno1" },
	{ run_command, "%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ cpu_perc, " CPU %s%% | ", NULL	},
	{ ram_perc, " RAM %s%% | ", NULL	},
	{ disk_perc, " ROOT %s%% | ", "/" },
        { disk_perc, " HDD %s%% | ", "/games" },
	{ run_command, " PACKAGES %s | ", "qlist -I | wc -l" },
	{ uptime,   " UPTIME %s | ", NULL },
	{ kernel_release, "%s | ", NULL },
	{ datetime, 	" %s",    "%B %d %a %T" },
};

/*static const struct arg args[] = {
        { run_command, ":%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
	{ datetime, 	"%s",    "%b %d %a %T" },
};*/
