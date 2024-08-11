namespace card;

// No composition or association which allows to use basic layer in other app

using {cuid} from '@sap/cds/common';

entity Card : cuid {
    customerUUID : UUID;
}

entity Transaction : cuid {
    cardUUID            : UUID;
    transactionDateTime : Date;
    destination         : String;
    amount              : Integer;
    currency            : String(3)
}
