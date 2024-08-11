namespace customer.service;

using customer.transaction as customer from '../db/customer/customer-transaction';
using card as card from '../db/card/card';

// it allows to crate customer, BUT not card
// however, cards are visible in the stack because of composition
service CustomerService {
    entity Customer as
        projection on customer.Customer {
            *,
            cards,
            programs
        };

    // included as not .cdsrc.json is used
    entity Program  as projection on customer.Program;

    // included as not .cdsrc.json is used
    @readonly
    entity Card     as projection on card.Card;
}
