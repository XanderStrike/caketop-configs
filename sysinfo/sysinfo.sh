echo "load:"
uptime | awk -F'[a-z]:' '{ print $2}'
echo "ram:"
free -m | awk '/^Mem:/{print "",$3, "/", $2}'
echo "cpu temp:"
acpi -t | awk '{ print "",$4, "C" }'
echo "root:"
df -h | awk '/caketop-root/{ print "", $3, "/", $2}'
echo "nas:"
df -h | awk '/all/{ print "", $3, "/", $2}'
