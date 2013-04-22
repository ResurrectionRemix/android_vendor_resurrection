#!/sbin/sh

# Persist important data across installs

# Root for system files
sysroot="/system"

# Root for saving persist files during install
saveroot="/tmp/save"

# Persist config (relative to sysroot)
persistconf="etc/persist.conf"

# Defaults
persist_enable=0
persist_props=""
persist_files=""

# Check whether persistence is enabled.
# Note enabled returns 0 for use in if/endif constructs.
is_enabled()
{
    case "$persist_enable" in
    0 | false | False)
        return 1
        ;;
    *)
        # Fall through
    esac

    return 0
}

# Load user config.
# Always persist the config file so the enabled setting persists.
load_config()
{
    f="$1"

    if [ -f "$f" ]; then
        source "$f"
        if ! is_enabled; then
            persist_files=""
            persist_props=""
        fi
        # Always persist the config
        persist_files="$persist_files $persistconf"
    fi
}

save_props()
{
    rm -f "$saveroot/prop"
    for prop in $persist_props; do
        echo "save_props: $prop"
        grep "^$prop=" "$sysroot/build.prop" >> "$saveroot/prop"
    done
}

restore_props()
{
    local sedargs

    sedargs="-i"
    for prop in $(cat $saveroot/prop); do
        echo "restore_props: $prop"
        k=$(echo $prop | cut -d'=' -f1)
        sedargs="$sedargs s/^$k=.*/$prop/"
    done
    sed $sedargs "$sysroot/build.prop"
}

save_files()
{
    for f in $persist_files; do
        echo "save_files: $f"
        d="$saveroot/`dirname $f`"
        mkdir -p "$d"
        cp "$sysroot/$f" "$saveroot/$f"
    done
}

restore_files()
{
    for f in $persist_files; do
        echo "restore_files: $f"
        d="$sysroot/`dirname $f`"
        cp "$saveroot/$f" "$sysroot/$f"
    done
}

mkdir -p $saveroot

case "$1" in
save)
    load_config "$sysroot/$persistconf"
    save_files
    save_props
    ;;
restore)
    load_config "$saveroot/$persistconf"
    restore_files
    restore_props
esac

exit 0
