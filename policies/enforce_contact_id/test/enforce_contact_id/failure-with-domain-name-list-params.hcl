mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "contact_id_enforced_domain_names" {
  value = [
    "example-2.eu"
  ]
}

param "allowed_contact_ids" {
  value = [
    10030,
  ]
}

test {
  rules = {
    main = false
  }
}
