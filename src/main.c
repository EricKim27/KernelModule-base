#include <linux/module.h>

static int __init modinit(void) {
    //your init code here
}

static void __exit modexit(void) {
    //your exit code here
}

module_init(modinit);
module_exit(modexit);

MODULE_LICENSE("your license");
MODULE_AUTHOR("Your Name.");
MODULE_DESCRIPTION("Module Description");