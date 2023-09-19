mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "transfer_lock_enforced_domain_names" {
  value = [
    "example-2.com"
  ]
}

test {
  rules = {
    main = false
  }
}
