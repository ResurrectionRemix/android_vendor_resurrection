#!/sbin/sh
#
# /system/addon.d/50-cm.sh
# During a ROM upgrade, this script backs up /system/etc/hosts,
# /system is formatted and reinstalled, then the file is restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
etc/paranoid/properties.conf
EOF
}

check_prereq() {
export V=  grep revision system/etc/paranoid/properties.conf | cut -c11
if ( ! grep -q "^ro.papref.revision=$V" /system/build.prop ); then
  echo "Not backing up files from incompatible version."
  exit 127
fi
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
