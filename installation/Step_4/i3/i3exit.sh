#!/bin/sh
lock() {
    #i3lock -c 222222
    i3lock -i ~/.config/i3/lockscreen.png -t
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl supend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        #shutdown -r
        systemctl reboot
        ;;
    shutdown)
       # sudo shutdown -h now
       systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
