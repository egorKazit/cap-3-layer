namespace card.service;

using card.transaction as card from '../db/card/card-transaction';

// it allows to crate card and see transactions
service CardService {
    entity Card     as projection on card.Card;
}
