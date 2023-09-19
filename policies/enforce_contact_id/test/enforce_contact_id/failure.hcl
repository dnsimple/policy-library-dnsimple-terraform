mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

param "allowed_contact_ids" {
  value = [
    1,
    2,
  ]
}


test {
  rules = {
    main = false
  }
}
