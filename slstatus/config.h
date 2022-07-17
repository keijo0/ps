/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

/* *                                                     NULL on OpenBSD/FreeBSD
 * cpu_perc            cpu usage in percent            NULL
 * run_command         custom shell command            command (echo foo)
 * separator           string to echo                  NULL
 * swap_free           free swap in GB                 NULL
 * swap_perc           swap usage in percent           NULL
 * swap_total          total swap size in GB           NULL
 * swap_used           used swap in GB                 NULL
 * uid                 UID of current user             NULL
 * uptime              system uptime                   NULL
 * username            username of current user        NULL
 * vol_perc            OSS/ALSA volume in percent      mixer file (/dev/mixer)
 */
//static const struct arg args[] = {
	/* function format          argument */
//    	{ netspeed_rx, ": %sB/s | ",  "eno1" },
 //     	{ run_command, ":%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
//	{ cpu_perc, "[CPU %s%%] ", NULL	},
//	{ ram_perc, "[RAM %s%%] ", NULL	},
//	{ disk_perc, "[: %s%%] ", "/" },
//	{ uptime,   " %s ", NULL },
//	{ kernel_release, "%s | ", NULL },
//	{ datetime, 	" %s",    "%d %a %R" },
//};

static const struct arg args[] = {
	/* function format          argument */
	{ datetime, 	"%s",    "%b %d %a %T" },
};
