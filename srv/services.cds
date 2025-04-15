using { PurchaseContracts as PurchaseContract} from './external/PurchaseContracts';


service Proxy @(path: '/proxy' ) {
    
    //@requires: [ 'authenticated-user', 'Admin']
    entity A_PurchaseContract as projection on PurchaseContract.A_PurchaseContract;
}