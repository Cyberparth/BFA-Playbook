# Bruteforce Detection Steps 

**Steps:**

1] Collect the SSH Logs 

>> journalctl -u ssh --no-pager

2] Filter failed authentication attempts 

>> journalctl -u ssh --no-pager | grep "Failed password"

3] Extract source IP Addresses

>> journalctl -u ssh --no-pager | grep "Failed password" | sed -n 's/.*from \([^ ]*\).*/\1/p'

4] Count Failed Attempts per IP

>> journalctl -u ssh --no-pager | grep "Failed password" | sed -n 's/.*from \([^ ]*\).*/\1/p' | sort | uniq -c
