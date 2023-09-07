# Enforce Transfer Lock State

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the transfer lock state on a domain prevents unauthorized transfers of the domain to another registrar. This policy checks that the transfer lock state is set, to your expected value.

## Parameter Reference

The following parameter(s) are supported:

* `transfer_lock_state` - (Boolean) The state of the domain transfer lock state you want to enforce. (default: `true`)
* `transfer_lock_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_transfer_lock_state.sentinel:59:1 - Rule "main"
        Value:
          true
```
