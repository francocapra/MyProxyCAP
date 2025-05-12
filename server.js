const cds = require('@sap/cds');
const swagger = require('./srv/swagger');

// Initialize Express application
cds.on('bootstrap', (app) => {
    // Initialize Swagger documentation
    swagger(app);

    // Add any additional Express middleware here
    app.use((req, res, next) => {
        // Add custom headers
        res.setHeader('X-Powered-By', 'MyProxyCAP');
        next();
    });
});

// Start the application
module.exports = cds.server;