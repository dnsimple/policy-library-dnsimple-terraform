# Enforce DNSSEC State

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the dnssec state on a domain ensures that the domain is secured with DNSSEC. This policy checks that the dnssec state is set, to your expected value.

## Parameter Reference

The following parameter(s) are supported:

* `dnssec_state` - (Boolean) The state of the domain dnssec state you want to enforce. (default: `true`)
* `dnssec_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)
* `dnssec_enforced_domain_tlds` - (List) The list of domain TLDs to exclude from enforcing the policy, as some TLDs do not support DNSSEC. Leave as empty list to apply to all TLDs. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_dnssec_state.sentinel:59:1 - Rule "main"
        Value:
          true
```
