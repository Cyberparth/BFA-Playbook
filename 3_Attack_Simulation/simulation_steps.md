# Brute-Force Attack Simulation Steps

## Objective
The objective of this simulation is to generate repeated failed
authentication attempts in a controlled lab environment in order
to test detection and incident response procedures.

## Steps Performed

1. Initiated SSH login attempts to the local system
2. Entered incorrect passwords repeatedly for a test user account
3. Ensured all attempts originated from the same source IP
4. Repeated the process within a short time window to simulate
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

