mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "whois_privacy_enforced_domain_names" {
  value = [
    "example-2.eu"
  ]
}

test {
  rules = {
    main = true
  }
}
