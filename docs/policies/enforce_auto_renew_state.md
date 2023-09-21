# Enforce Auto Renew State

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the auto renew state on a domain ensures that the domain is automatically renewed before it expires and is not lost. This policy checks that the auto renew state is set, to your expected value.

## Parameter Reference

The following parameter(s) are supported:

* `auto_renew_state` - (Boolean) The state of the domain auto renew state you want to enforce. (default: `true`)
* `auto_renew_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_auto_renew_state.sentinel:59:1 - Rule "main"
        Value:
          true
```
