mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "domain_delegation_enforced_domain_names" {
  value = [
    "example-2.com"
  ]
}

test {
  rules = {
    main = true
  }
}
