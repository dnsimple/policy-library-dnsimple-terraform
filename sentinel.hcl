import "module" "helpers" {
  source = "./modules/helpers.sentinel"
}


policy "enforce_transfer_lock_state" {
  source = "./policies/enforce_transfer_lock_state/enforce_transfer_lock_state.sentinel"
  enforcement_level = "advisory"
}

// policy "enforce_auto_renewal_state" {
//   source = "./policies/enforce_auto_renewal_state/enforce_auto_renewal_state.sentinel"
//   enforcement_level = "advisory"
// }

// policy "enforce_whois_privacy_state" {
//   source = "./policies/enforce_whois_privacy_state/enforce_whois_privacy_state.sentinel"
//   enforcement_level = "advisory"
// }

// policy "enforce_dnssec_state" {
//   source = "./policies/enforce_dnssec_state/enforce_dnssec_state.sentinel"
//   enforcement_level = "advisory"
// }

// policy "allow_approved_delegation" {
//   source = "./policies/allow_approved_delegation/allow_approved_delegation.sentinel"
//   enforcement_level = "advisory"
// }
