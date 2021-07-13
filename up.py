from datetime import timedelta
class up:

    def getUptime(self):
        with open('/proc/uptime', 'r') as f:
            uptime_seconds = float(f.readline().split()[0])
            return (' uptime_seconds_total ' + str(uptime_seconds))
