Brute-Force Incident Response Playbook

## 1. Incident Overview
**Incident Name:** Brute-Force Authentication Attack

**Description:**  
A brute-force authentication attack involves repeated login attempts
using multiple password combinations against a user account or service
with the intent of gaining unauthorized access.

**Potential Impact:**  
- Account compromise  
- Unauthorized system access  
- Privilege escalation  
- Service degradation due to excessive authentication attempts  

**Severity:**  
- Medium: Multiple failed login attempts detected  
- High: Failed attempts followed by a successful login


## 2. Detection
**Log Sources:**
- Authentication logs (/var/log/auth.log)
- SSH service logs

**Indicators of Attack:**
- Repeated failed login attempts
- Multiple attempts from the same IP address
- Rapid attempts within a short time window

**Detection Criteria:**
IF more than 5 failed login attempts are observed from a single IP
address within 60 seconds, classify the activity as a suspected
brute-force attack.

## 3. Identification

**Analyst Verification Steps:**
1. Review authentication logs for failed login patterns
2. Identify source IP address and targeted username
3. Check whether a successful login occurred after failures
4. Validate timestamps and frequency of attempts

**False Positive Checks:**
- User repeatedly entering incorrect credentials
- Internal monitoring systems
- Known administrative IP addresses


## 4. Containment

**Immediate Actions:**
- Block the malicious IP address using firewall rules (simulated)
- Temporarily lock the targeted user account
- Increase monitoring on authentication logs

**Goal:**  
Prevent further unauthorized attempts and limit potential damage.

## 5. Eradication

**Root Cause Removal:**
- Ensure the attacking IP address is blocked
- Force password reset for affected user account
- Review authentication configurations

**Preventive Measures:**
- Implement account lockout policies
- Enable multi-factor authentication (MFA)
- Apply rate limiting on login attempts

## 6. Recovery

**System Restoration:**
- Unlock the user account after verification
- Confirm secure password reset
- Restore normal authentication services

**Monitoring Plan:**
- Monitor authentication logs for 24 hours
- Verify no repeated failed login patterns


## 7. Lessons Learned

**Observations:**
- Brute-force attack was detected early
- Existing monitoring helped identify suspicious behavior

**Improvements:**
- Lower detection threshold for faster alerting
- Implement automated IP blocking
- Enhance user awareness on password hygiene
