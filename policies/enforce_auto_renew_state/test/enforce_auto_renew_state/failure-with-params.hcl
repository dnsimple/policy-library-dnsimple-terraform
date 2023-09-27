mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "auto_renew_enforced_domain_names" {
  value = [
    "example-2.com"
  ]
}

test {
  rules = {
    main = false
  }
}
