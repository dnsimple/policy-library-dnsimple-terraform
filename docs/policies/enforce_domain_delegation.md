# Enforce Domain Delegation

| Provider | Category           |
| -------- | ------------------ |
| DNSimple | Network Automation |

## Overview
Enforcing the domain delegation policy ensures that the domain name servers are set to the name servers that you expect. This policy is useful for ensuring that the domain is not delegated to another DNS provider by mistake or by a malicious actor.

## Parameter Reference

The following parameter(s) are supported:

* `allowed_delegation_records` - (List) The list of the allowed name server records. If a domain delegation resource contains an entry that is not in the list the policy enforcement will trigger. (default: `["ns1.dnsimple.com", "ns2.dnsimple.com", "ns3.dnsimple.com", "ns4.dnsimple-edge.org"]`)
* `domain_delegation_enforced_domain_names` - (List) The list of domains to enforce the policy. Leave as empty list to apply to all domains. (default: `[]`)

## Policy Result (Pass)

```bash
trace:
      enforce_domain_delegation.sentinel:77:1 - Rule "main"
        Value:
          true
```

## Policy Result (Failure)

```bash
logs:
  	========================================================================
   	Name        : enforce_domain_delegation.sentinel
   	Provider    : dnsimple/dnsimple
   	Resource    : dnsimple_domain_delegation
   	Parameter   : name_servers
   	========================================================================
   	For a list of allowed parameter options see:
   	https://github.com/dnsimple/policy-library-dnsimple-terraform/blob/main/README.md

  	========================================================================
   	RESOURCE VIOLATIONS
   	The domain name_servers should only include ns1.dnsimple.com, ns2.dnsimple.com, ns3.dnsimple.com, ns4.dnsimple.com, ns4.dnsimple-edge.org.
   	========================================================================
  	 name       : instance
  	 type       : dnsimple_domain_delegation
  	 address    : dnsimple_domain_delegation.test
  	 message    : ns1.name-servers.com, ns2.dnsimple.com, ns1.gcp.com, ns1.aws.com is not an allowed name_servers set.
   	------------------------------------------------------------------------
  	 name       : instance
  	 type       : dnsimple_domain_delegation
  	 address    : dnsimple_domain_delegation.test_2
  	 message    : ns1.name-servers.com, ns2.dnsimple.com is not an allowed name_servers set.
   	------------------------------------------------------------------------
  	 Resources out of compliance: 2
   	------------------------------------------------------------------------
trace:
  enforce_domain_delegation.sentinel:77:1 - Rule "main"
    Value:
      false
```
