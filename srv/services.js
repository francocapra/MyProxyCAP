const cds = require('@sap/cds');
const NodeCache = require('node-cache');

module.exports = async (srv) => {
    // Create a cache with 5-minute TTL (time to live)
    const cache = new NodeCache({ stdTTL: 300 });

    // Connect to the external service
    const ECPurchaseContract = await cds.connect.to('PurchaseContracts');

    // Get entity references
    const {
        A_PurchaseContract,
        A_PurchaseContractItem,
        A_PurchaseContractNotes,
        A_PurchaseContractPartners
    } = srv.entities;

    // Generic error handler
    const handleError = (req, error, entity) => {
        console.error(`Error processing ${entity} request:`, error);

        // Map backend errors to meaningful client responses
        if (error.code === 'ECONNREFUSED' || error.code === 'ETIMEDOUT') {
            req.reject(503, 'Backend service unavailable');
        } else if (error.status === 404) {
            req.reject(404, `${entity} not found`);
        } else {
            req.reject(500, `Error processing ${entity} request: ${error.message || 'Unknown error'}`);
        }
    };

    // Cache helper
    const getCachedOrFetch = async (req, entity, cacheKey) => {
        try {
            // Check cache first
            const cachedData = cache.get(cacheKey);
            if (cachedData) {
                console.info(`Cache hit for ${entity}`);
                return cachedData;
            }

            // Log the fetch attempt
            console.info(`Fetching ${entity} from backend`, req.query);

            // Fetch from backend if not in cache
            const result = await ECPurchaseContract.run(req.query);

            // Store in cache
            cache.set(cacheKey, result);
            return result;
        } catch (error) {
            handleError(req, error, entity);
        }
    };

    // READ handlers with caching
    srv.on('READ', A_PurchaseContract, async (req) => {
        const query = JSON.stringify(req.query);
        return getCachedOrFetch(req, 'Purchase Contract', `contract_${query}`);
    });

    srv.on('READ', A_PurchaseContractItem, async (req) => {
        const query = JSON.stringify(req.query);
        return getCachedOrFetch(req, 'Purchase Contract Item', `contract_item_${query}`);
    });

    srv.on('READ', A_PurchaseContractNotes, async (req) => {
        const query = JSON.stringify(req.query);
        return getCachedOrFetch(req, 'Purchase Contract Notes', `contract_notes_${query}`);
    });

    srv.on('READ', A_PurchaseContractPartners, async (req) => {
        const query = JSON.stringify(req.query);
        return getCachedOrFetch(req, 'Purchase Contract Partners', `contract_partners_${query}`);
    });

    // Expose remote actions
    srv.on('ApproveDocument', async (req) => {
        try {
            const { PurchaseContract } = req.data;
            console.info(`Approving Purchase Contract: ${PurchaseContract}`);

            // Invalidate cache for this contract
            cache.del(`contract_{"SELECT":{"from":{"ref":["A_PurchaseContract"]},"where":[{"ref":["PurchaseContract"]},"=",{"val":"${PurchaseContract}"}]}}`);

            // Call remote action
            const result = await ECPurchaseContract.run({
                action: 'PurchaseContracts.ApproveDocument',
                data: { PurchaseContract }
            });

            return result;
        } catch (error) {
            handleError(req, error, 'Approve Document');
        }
    });

    srv.on('RejectDocument', async (req) => {
        try {
            const { PurchaseContract } = req.data;
            console.info(`Rejecting Purchase Contract: ${PurchaseContract}`);

            // Invalidate cache for this contract
            cache.del(`contract_{"SELECT":{"from":{"ref":["A_PurchaseContract"]},"where":[{"ref":["PurchaseContract"]},"=",{"val":"${PurchaseContract}"}]}}`);

            // Call remote action
            const result = await ECPurchaseContract.run({
                action: 'PurchaseContracts.RejectDocument',
                data: { PurchaseContract }
            });

            return result;
        } catch (error) {
            handleError(req, error, 'Reject Document');
        }
    });
};