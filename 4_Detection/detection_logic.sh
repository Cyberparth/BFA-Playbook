#!/bin/bash

journalctl -u ssh --no-pager |         #journalctl -u ssh shows ssh logs and no pages > no scrollable output
grep "Failed password" | #shows only failed passwords logs
sed -n 's/.*from \([^ ]*\).*/\1/p' |  #extract the source address from each failed attempt
sort | uniq -c  # sort and  give unique output with counts of Failed passwords 

# more failed passwords attempts leads to alerting of bruteforce sttack 


