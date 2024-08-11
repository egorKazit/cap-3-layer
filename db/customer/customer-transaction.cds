namespace customer.transaction;

// transaction layer that has all composition

using {customer} from './customer';
using {card} from '../card/card';

entity Customer as
    select from customer.Customer {
        *,
        programs : Composition of many customer.transaction.Program on $self.ID = programs.customerUUID,
        // composition to Card
        // in fact it should be association
        // but as the intention is to show how we can avoid creation unnecessary entries, it's composition
        @readonly
        cards    : Composition of many card.Card on $self.ID = cards.customerUUID
    };

entity Program  as select from customer.Program;
