# Enforce Contact ID

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the contact id for a domain allows you to ensure that the domain is registered with the correct contact. This policy checks that the contact id is set, to an allowed value.

## Parameter Reference

The following parameter(s) are supported:

* `allowed_contact_ids` - (List) The list of contact ids to allow. (required)
* `contact_id_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_contact_id.sentinel:59:1 - Rule "main"
        Value:
          true
```

## Policy Result (Failure)

```bash
logs:
  	========================================================================
   	Name        : enforce_contact_id.sentinel
   	Provider    : dnsimple/dnsimple
   	Resource    : dnsimple_registered_domain
   	Parameter   : contact_id
   	========================================================================
   	For a list of allowed parameter options see:
   	https://github.com/dnsimple/policy-library-dnsimple-terraform/blob/main/README.md

  	========================================================================
   	RESOURCE VIOLATIONS
   	The domain contact_id should be in 1, 2.
   	========================================================================
  	 name       : instance
  	 type       : dnsimple_registered_domain
  	 address    : dnsimple_registered_domain.test
  	 message    : 10030 is not an allowed contact id.
   	------------------------------------------------------------------------
  	 name       : instance
  	 type       : dnsimple_registered_domain
  	 address    : dnsimple_registered_domain.test_2
  	 message    : 10230 is not an allowed contact id.
   	------------------------------------------------------------------------
  	 Resources out of compliance: 2
   	------------------------------------------------------------------------
trace:
  enforce_contact_id.sentinel:61:1 - Rule "main"
    Value:
      false
```
