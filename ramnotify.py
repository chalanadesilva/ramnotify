import time
import psutil
from plyer import notification
from pygame import mixer
import sys

def check_ram_usage(threshold=95):
    mem = psutil.virtual_memory()
    # Calculate RAM usage percent
    usage_percent = mem.percent
    if usage_percent > threshold:
        mixer.init()
        mixer.music.load('ding.wav')
        mixer.music.play()
        notification.notify(
            title="High RAM Usage",
            message=f"{usage_percent}% RAM USED",
            app_icon=None,  # Path to an icon if needed
            timeout=10  # seconds
            )

def main():
    notification.notify(
            title="ramnotify",
            message="ramnotify has started",
            app_icon=None,  # Path to an icon if needed
            timeout=10  # seconds
            )
    while True:
        try:
            check_ram_usage()
            time.sleep(10)  # Check every 20 seconds
        except KeyboardInterrupt:
            notification.notify(
            title="ramnotify",
            message="ramnotify has been terminated by user",
            app_icon=None,  # Path to an icon if needed
            timeout=10  # seconds
            )
            print("\nProgram interrupted by user.")
            sys.exit()

if __name__ == "__main__":
    main()
