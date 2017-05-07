#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:20230144:880bec22683548e908136f764c0e8b2db47fca55; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18857984:8ef06fe3ec40c3cb6d9ac3dc0b716e56008aa2a5 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 880bec22683548e908136f764c0e8b2db47fca55 20230144 8ef06fe3ec40c3cb6d9ac3dc0b716e56008aa2a5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
