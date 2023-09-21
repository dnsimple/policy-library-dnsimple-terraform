mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "allowed_contact_ids" {
  value = [
    10030,
    10230,
  ]
}

test {
  rules = {
    main = true
  }
}
