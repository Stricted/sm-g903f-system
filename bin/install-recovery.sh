#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:22132736:32af021aac2924dcb4f8677346841df87f080aa2; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18970624:c53bc97be6627ce8b7f6cf35d5a89441bfaff493 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 32af021aac2924dcb4f8677346841df87f080aa2 22132736 c53bc97be6627ce8b7f6cf35d5a89441bfaff493:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
