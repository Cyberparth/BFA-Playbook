# Response Action Steps

## **Steps:**

## **1] Confirm the Incident**
Verify multiple failed ssh authentication attempts from the same source IP

## **2] Classify the incident**
Incident Type: Brute-force / Credential Guessing
Severity: Medium
Status: Confirmed

## **3] Identify Affected Assets**
- Targeted account: testuser
- Affected service: SSH
- Source IP address: ::1 / 127.0.0.1
- Host system: Kali Linux

## **4] Containment Actions**
- Temporarily block the source IP address (simulated)
- Temporarily lock the targeted user account if required
- Increase monitoring of SSH authentication logs

## **5] Eradication Actions**
- Ensure no unauthorized access was obtained
- Reset password for the targeted account
- Review SSH authentication settings

## **6] Recovery Actions**
- Unlock the user account after verification
- Restore normal SSH access
- Continue monitoring for additional failed attempts

## **7] Post Incident Monitoring**
Monitor SSH logs for at least 24 hours to ensure no repeated
authentication failures occur.

## **8] Incident Closure**
Incident is closed after no further suspicious activity
is observed during the monitoring period.
