/*
 * Copyright (C) 2013 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _RECOVERY_CMDS_H
#define _RECOVERY_CMDS_H

#include <stdio.h>
#include <string.h>

#include "edifyscripting.h"
#include "extendedcommands.h"
#include "nandroid.h"

extern int minizip_main(int argc, char **argv);
extern int flash_image_main(int argc, char **argv);
extern int volume_main(int argc, char **argv);
extern int edify_main(int argc, char **argv);
extern int dump_image_main(int argc, char **argv);
extern int erase_image_main(int argc, char **argv);
extern int mkyaffs2image_main(int argc, char **argv);
extern int unyaffs_main(int argc, char **argv);
extern int make_ext4fs_main(int argc, char **argv);
extern int reboot_main(int argc, char **argv);
extern int poweroff_main(int argc, char **argv);
extern int setprop_main(int argc, char **argv);
extern int getprop_main(int argc, char **argv);
extern int fsck_msdos_main(int argc, char **argv);
extern int newfs_msdos_main(int argc, char **argv);
#ifdef HAVE_EXFAT
extern int mkfs_exfat_main(int argc, char **argv); 
extern int mount_exfat_main(int argc, char **argv); 
extern int fsck_exfat_main(int argc, char **argv);
#endif
extern int nandroid_main(int argc, char **argv);
extern int pigz_main(int argc, char **argv);
extern int sdcard_main(int argc, char **argv);
#ifdef BOARD_INCLUDE_CRYPTO
extern int vold_main(int argc, char **argv);
extern int vdc_main(int argc, char **argv);
#endif
extern int busybox_driver(int argc, char **argv);

struct recovery_cmd {
    const char *name;
    int (*main_func)(int argc, char **argv);
};

static const struct recovery_cmd recovery_cmds[] = {
    { "minizip",        minizip_main },
    { "flash_image",    flash_image_main },
    { "volume",         volume_main },
    { "edify",          edify_main },
    { "dump_image",     dump_image_main },
    { "erase_image",    erase_image_main },
    { "mkyaffs2image",  mkyaffs2image_main },
    { "unyaffs",        unyaffs_main },
    { "make_ext4fs",    make_ext4fs_main },
    { "nandroid",       nandroid_main },
    { "bu",             bu_main },
    { "reboot",         reboot_main },
    { "poweroff",       reboot_main },
    { "setprop",        setprop_main },
    { "getprop",        getprop_main },
    { "fsck_msdos",     fsck_msdos_main },
    { "newfs_msdos",    newfs_msdos_main },
#ifdef HAVE_EXFAT
    { "mkfs.exfat",     mkfs_exfat_main },
    { "exfat-fuse",     mount_exfat_main },
    { "fsck.exfat",     fsck_exfat_main },
#endif
    { "pigz",           pigz_main },
    { "sdcard",         sdcard_main },
#ifdef BOARD_INCLUDE_CRYPTO
    { "minivold",       vold_main },
    { "vdc",            vdc_main },
#endif
    { NULL, NULL },
};

inline struct recovery_cmd get_command(char* command) {
    int i;

    for (i = 0; recovery_cmds[i].name; i++) {
        if (strcmp(command, recovery_cmds[i].name) == 0)
            break;
    }

    return recovery_cmds[i];
}

#endif
