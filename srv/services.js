const cds = require('@sap/cds');

module.exports = async (srv) => {
    const ECPurchaseContract = await cds.connect.to('PurchaseContracts');
    const { A_PurchaseContract } = srv.entities;
    
    srv.on('READ', A_PurchaseContract, async (req) => {
        const oData = await ECPurchaseContract.run(req.query);
        return oData;
    });
}