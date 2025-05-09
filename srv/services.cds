using { PurchaseContracts as PC } from './external/PurchaseContracts';

@requires: 'authenticated-user'
service Proxy @(path: '/proxy' ) {
    
    //@requires: [ 'authenticated-user', 'Admin']
    @readonly
    entity A_PurchaseContract as projection on PC.A_PurchaseContract;
}