namespace customer.service;

using customer.transaction as customer from '../db/customer/customer-transaction';

// it allows to crate customer, BUT not card
// however, cards are visible in the stack because of composition
service CustomerService {
    entity Customer as projection on customer.Customer;
}
