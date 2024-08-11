namespace card.transaction;

// transaction layer that has all composition

using card from './card';

entity Card        as
    select from card.Card {
        *,
        transactions : Composition of many card.transaction.Transaction on $self.ID = transactions.cardUUID
    }

entity Transaction as
    select from card.Transaction {
        *
    }
