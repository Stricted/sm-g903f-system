#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:22138880:fe2417d24e07574420bbb5b8630a961a37c8caee; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18970624:412c533720cfe47827254254b3a7af0ef174a785 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY fe2417d24e07574420bbb5b8630a961a37c8caee 22138880 412c533720cfe47827254254b3a7af0ef174a785:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
