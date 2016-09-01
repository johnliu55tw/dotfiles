from i3pystatus import Status

status = Status(
    logfile="/home/john/i3pystatus.log")

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW32
#                          ^-- calendar week
status.register("clock",
    format="%Y/%m/%d %T",
    on_leftclick="gsimplecal",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    format="♪{volume}%",)

status.register("backlight",
    interval=1,
    backlight="intel_backlight",
    format="☀{percentage}%",)

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register("battery",
    battery_ident="BAT0",
    format="⚡{percentage:.2f}% {status}{consumption:.2f}W {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS": "↓",
        "CHR": "↑",
        "FULL": "✔",
    },)

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
    interface="wlan0",
    format_up="∿{essid} {quality:03.0f}%",
    on_leftclick="st -e connmanctl")

# Pomodoro plugin
status.register("pomodoro",
    sound="/home/john/Sounds/alarm-clock.wav",
    format="{current_pomodoro}/{total_pomodoro} {time}",)

status.run()
