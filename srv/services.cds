using {PurchaseContracts as PC} from './external/PurchaseContracts';

@requires: 'authenticated-user'
service Proxy @(path: '/proxy') {

    //@requires: [ 'authenticated-user', 'Admin']
    @readonly
    entity A_PurchaseContract         as projection on PC.A_PurchaseContract;

    @readonly
    entity A_PurchaseContractItem     as projection on PC.A_PurchaseContractItem;

    @readonly
    entity A_PurchaseContractNotes    as projection on PC.A_PurchaseContractNotes;

    @readonly
    entity A_PurchaseContractPartners as projection on PC.A_PurCtrPartners;

    // Actions exposed from the backend
    action ApproveDocument(PurchaseContract : String(10)) returns array of {
        Type    : String(1);
        Message : String(220);
    };

    action RejectDocument(PurchaseContract : String(10))  returns array of {
        Type    : String(1);
        Message : String(220);
    };
}
