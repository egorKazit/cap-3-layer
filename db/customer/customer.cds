namespace customer;

// No composition or association which allows to use basic layer in other app

using {cuid} from '@sap/cds/common';

entity Customer : cuid {
    firstName : String;
    lastName  : String;
}

entity Program : cuid {
    name         : String;
    customerUUID : UUID;
}
