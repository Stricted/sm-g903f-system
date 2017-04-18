#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:20230144:6c4609900c26f3577aec4e95a076eed84fb0884a; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18857984:94d6ed9d18abe10ac712dcca3c51f802d38da402 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 6c4609900c26f3577aec4e95a076eed84fb0884a 20230144 94d6ed9d18abe10ac712dcca3c51f802d38da402:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
