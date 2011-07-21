#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xbce771f0, "module_layout" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0xadf42bd5, "__request_region" },
	{ 0x6dbc4825, "per_cpu__current_task" },
	{ 0xf9fdaf8c, "kmalloc_caches" },
	{ 0x788fe103, "iomem_resource" },
	{ 0x163bfbfd, "dev_set_drvdata" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0x330589f6, "pci_disable_device" },
	{ 0xdc4577ef, "i2c_transfer" },
	{ 0x20000329, "simple_strtoul" },
	{ 0x43ab66c3, "param_array_get" },
	{ 0x105e2727, "__tracepoint_kmalloc" },
	{ 0xbed1b88b, "usb_kill_urb" },
	{ 0x28eaf2a4, "usb_deregister_dev" },
	{ 0x9adbe571, "remove_proc_entry" },
	{ 0xf53ed33d, "device_destroy" },
	{ 0x64e9ca5, "usb_reset_configuration" },
	{ 0x37bcd53a, "__register_chrdev" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0x6a9f26c9, "init_timer_key" },
	{ 0x7b70e023, "pci_bus_write_config_word" },
	{ 0x712aa29b, "_spin_lock_irqsave" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x45947727, "param_array_set" },
	{ 0x7d11c268, "jiffies" },
	{ 0xffc7c184, "__init_waitqueue_head" },
	{ 0x41344088, "param_get_charp" },
	{ 0xe83fea1, "del_timer_sync" },
	{ 0x59d8223a, "ioport_resource" },
	{ 0x70d1f8f3, "strncat" },
	{ 0xeb869e9c, "usb_deregister" },
	{ 0xb72397d5, "printk" },
	{ 0x12cf8d47, "usb_set_interface" },
	{ 0xb6ed1e53, "strncpy" },
	{ 0x2f287f0d, "copy_to_user" },
	{ 0xb4390f9a, "mcount" },
	{ 0xff5c21d6, "usb_register_dev" },
	{ 0x4b07e779, "_spin_unlock_irqrestore" },
	{ 0x374a690c, "device_create" },
	{ 0x744c0c68, "param_get_byte" },
	{ 0x46085e4f, "add_timer" },
	{ 0xfda85a7d, "request_threaded_irq" },
	{ 0xf4aef2cb, "i2c_del_adapter" },
	{ 0xb8aa2342, "__check_region" },
	{  0x38cc9, "usb_submit_urb" },
	{ 0x91920ad0, "kmem_cache_alloc" },
	{ 0x3af98f9e, "ioremap_nocache" },
	{ 0x52ebb126, "param_get_ushort" },
	{ 0x56f00fb0, "pci_bus_read_config_word" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x4292364c, "schedule" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x72c3be87, "param_set_byte" },
	{ 0x7c3debcd, "create_proc_entry" },
	{ 0x9bce482f, "__release_region" },
	{ 0x76805523, "pci_unregister_driver" },
	{ 0x6ad065f4, "param_set_charp" },
	{ 0x642e54ac, "__wake_up" },
	{ 0x1d2e87c6, "do_gettimeofday" },
	{ 0x37a0cba, "kfree" },
	{ 0x33d92f9a, "prepare_to_wait" },
	{ 0xedc03953, "iounmap" },
	{ 0x8892b129, "__pci_register_driver" },
	{ 0x8733d364, "usb_register_driver" },
	{ 0xb8857caf, "class_destroy" },
	{ 0x9ccb2622, "finish_wait" },
	{ 0x1e846fb0, "i2c_bit_add_bus" },
	{ 0x8235805b, "memmove" },
	{ 0xccc986bb, "pci_enable_device" },
	{ 0x20e01bc9, "__class_create" },
	{ 0xd6c963c, "copy_from_user" },
	{ 0x4854eee, "dev_get_drvdata" },
	{ 0x5a252d52, "usb_free_urb" },
	{ 0x37535ee7, "usb_alloc_urb" },
	{ 0xf20dabd8, "free_irq" },
	{ 0xe0bc24a1, "param_set_ushort" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=i2c-algo-bit";

MODULE_ALIAS("usb:v0C72p000Cd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("pci:v0000001Cd00000001sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000002sv*sd*bc*sc*i*");

MODULE_INFO(srcversion, "ECF340B968A3B4CBC9AE7B3");
