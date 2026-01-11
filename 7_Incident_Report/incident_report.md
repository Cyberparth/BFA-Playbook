
#  Incident Report – SSH Brute Force Attempt

## Incident Summary

Multiple failed SSH login attempts were observed on the system.
The attempts were made against a test user account and originated from the same source IP. The activity was detected during routine log monitoring.

---

## Date and Time

* Date: Jan 11
* Time: Approx 16:36

---

## Affected System

* Operating System: Kali Linux
* Service Affected: SSH
* User Account Targeted: testuser

---

## Incident Description

During log monitoring, repeated SSH authentication failures were noticed for the same user account. The failures occurred within a short time period and originated from the same IP address. After multiple failed attempts, the SSH service automatically closed the connection.

---

## Detection Method

The incident was detected by:

* Reviewing SSH logs using journalctl
* Counting repeated “Failed password” entries
* Using a simple Bash script to count failed attempts per IP

---

## Indicators Observed

* Multiple “Failed password” log entries
* Same user targeted repeatedly
* Same source IP address
* SSH connection terminated after repeated failures

---

## Response Actions Taken

* The activity was confirmed as suspicious
* No successful login was observed
* The affected account was reviewed
* Additional monitoring was performed on SSH logs

---

## Impact Assessment

* No unauthorized access was gained
* No data was modified or accessed
* The impact was limited due to SSH security controls

---

## Conclusion

The activity was identified as a brute-force or credential guessing attempt against the SSH service. The attack was unsuccessful, and built-in SSH protections helped prevent account compromise. The incident was documented and closed after no further suspicious activity was observed.




