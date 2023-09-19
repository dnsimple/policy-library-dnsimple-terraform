# Enforce Whois Privacy State

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the whois privacy state on a domain is a privacy feature offered by some TLDs. This policy checks that the whois privacy state is set, to your expected value.

## Parameter Reference

The following parameter(s) are supported:

* `whois_privacy_state` - (Boolean) The state of the domain transfer lock state you want to enforce. (default: `true`)
* `whois_privacy_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)
* `whois_privacy_enforced_domain_tlds` - (List) The list of domain TLDs to exclude from enforcing the policy. Leave as empty list to apply to all TLDs. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_whois_privacy_state.sentinel:59:1 - Rule "main"
        Value:
          true
```
