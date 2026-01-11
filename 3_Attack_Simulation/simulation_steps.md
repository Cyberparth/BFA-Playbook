# Brute-Force Attack Simulation Steps

## Objective
The objective of this simulation is to generate repeated failed
authentication attempts in a controlled lab environment in order
to test detection and incident response procedures.

## Steps Performed
1. Check status of ssh by using this command [sudo systemctl status ssh]
2. If the service is not started then start it using [sudo systemctl start ssh]
3. Add new user for testing purpose as "testuser" [sudo adduser testuser] , then set password for it.
4. Use journalctl cmd to check the logs
5. But , as we are Simulating for bruteforce login attempt we need ssh filtering in logs
6. We, will be using this cmd to filter logs in ssh [sudo journalctl -u ssh -f ]
7. On other terminal use this cmd to attempt failed login attempts intentionally [sudo testuser@locahost or sudo testuser@127.0.0.1]
8. Ensured all attempts originated from the same source IP
9. Repeated the process within a short time window to simulate
   brute-force behavior

## Log Generation
Each failed login attempt generated authentication log entries
containing:
- Timestamp
- Username
- Source IP address
- Failure reason


## Evidence Captured
- Authentication log entries showing repeated failures
- Timestamps indicating high-frequency attempts
- Source IP address responsible for the activity

## Safety Considerations
- All attempts were performed on a test account
- No real credentials were exposed
- No external systems were targeted

