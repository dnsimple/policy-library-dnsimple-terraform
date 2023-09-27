mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

test {
  rules = {
    main = true
  }
}
