mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "whois_privacy_enforced_domain_tlds" {
  value = [
    ".EU",
    ".BE",
  ]
}

test {
  rules = {
    main = false
  }
}
