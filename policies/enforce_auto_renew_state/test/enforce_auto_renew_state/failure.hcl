mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "helpers" {
  source = "../../../../modules/helpers.sentinel"
}

test {
  rules = {
    main = false
  }
}
