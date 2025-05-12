const cds = require('@sap/cds');
const swaggerJSDoc = require('swagger-jsdoc');
const swaggerUI = require('swagger-ui-express');

/**
 * Initialize Swagger documentation
 * @param {object} app - Express app instance
 */
module.exports = (app) => {
    // Swagger definition
    const swaggerDefinition = {
        openapi: '3.0.0',
        info: {
            title: 'Purchase Contract Proxy API',
            version: '1.0.0',
            description: 'API for managing SAP Purchase Contracts',
            contact: {
                name: 'API Support',
                email: 'support@example.com'
            }
        },
        servers: [
            {
                url: '/proxy',
                description: 'Proxy service endpoint'
            }
        ],
        tags: [
            {
                name: 'Contracts',
                description: 'Purchase Contract operations'
            },
            {
                name: 'Contract Items',
                description: 'Purchase Contract Item operations'
            },
            {
                name: 'Contract Notes',
                description: 'Purchase Contract Notes operations'
            },
            {
                name: 'Contract Partners',
                description: 'Purchase Contract Partners operations'
            }
        ],
        components: {
            schemas: {
                PurchaseContract: {
                    type: 'object',
                    properties: {
                        PurchaseContract: {
                            type: 'string',
                            description: 'Purchase Contract ID',
                            example: '4500000001'
                        },
                        PurchaseContractType: {
                            type: 'string',
                            description: 'Purchase Contract Type',
                            example: 'WK'
                        },
                        CompanyCode: {
                            type: 'string',
                            description: 'Company Code',
                            example: '1000'
                        },
                        Supplier: {
                            type: 'string',
                            description: 'Supplier ID',
                            example: '100000'
                        },
                        ValidityStartDate: {
                            type: 'string',
                            format: 'date',
                            description: 'Validity Start Date',
                            example: '2025-01-01'
                        },
                        ValidityEndDate: {
                            type: 'string',
                            format: 'date',
                            description: 'Validity End Date',
                            example: '2025-12-31'
                        }
                    }
                },
                Message: {
                    type: 'object',
                    properties: {
                        Type: {
                            type: 'string',
                            description: 'Message type',
                            example: 'S'
                        },
                        Message: {
                            type: 'string',
                            description: 'Message text',
                            example: 'Document processed successfully'
                        }
                    }
                }
            }
        },
        paths: {
            '/A_PurchaseContract': {
                get: {
                    tags: ['Contracts'],
                    summary: 'Retrieve purchase contracts',
                    description: 'Get a list of purchase contracts with optional filtering',
                    parameters: [
                        {
                            name: '$filter',
                            in: 'query',
                            description: 'OData $filter expression',
                            schema: {
                                type: 'string',
                                example: "Supplier eq '100000'"
                            }
                        },
                        {
                            name: '$top',
                            in: 'query',
                            description: 'Number of items to return',
                            schema: {
                                type: 'integer',
                                example: 10
                            }
                        },
                        {
                            name: '$skip',
                            in: 'query',
                            description: 'Number of items to skip',
                            schema: {
                                type: 'integer',
                                example: 0
                            }
                        }
                    ],
                    responses: {
                        '200': {
                            description: 'Successfully retrieved purchase contracts',
                            content: {
                                'application/json': {
                                    schema: {
                                        type: 'object',
                                        properties: {
                                            value: {
                                                type: 'array',
                                                items: {
                                                    $ref: '#/components/schemas/PurchaseContract'
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        },
                        '500': {
                            description: 'Internal server error'
                        }
                    }
                }
            },
            '/A_PurchaseContract({PurchaseContract})': {
                get: {
                    tags: ['Contracts'],
                    summary: 'Retrieve a specific purchase contract',
                    description: 'Get details of a specific purchase contract by ID',
                    parameters: [
                        {
                            name: 'PurchaseContract',
                            in: 'path',
                            description: 'Purchase Contract ID',
                            required: true,
                            schema: {
                                type: 'string',
                                example: '4500000001'
                            }
                        }
                    ],
                    responses: {
                        '200': {
                            description: 'Successfully retrieved purchase contract',
                            content: {
                                'application/json': {
                                    schema: {
                                        $ref: '#/components/schemas/PurchaseContract'
                                    }
                                }
                            }
                        },
                        '404': {
                            description: 'Purchase contract not found'
                        },
                        '500': {
                            description: 'Internal server error'
                        }
                    }
                }
            },
            '/ApproveDocument': {
                post: {
                    tags: ['Contracts'],
                    summary: 'Approve a purchase contract',
                    description: 'Approve a purchase contract by ID',
                    requestBody: {
                        required: true,
                        content: {
                            'application/json': {
                                schema: {
                                    type: 'object',
                                    required: ['PurchaseContract'],
                                    properties: {
                                        PurchaseContract: {
                                            type: 'string',
                                            description: 'Purchase Contract ID',
                                            example: '4500000001'
                                        }
                                    }
                                }
                            }
                        }
                    },
                    responses: {
                        '200': {
                            description: 'Successfully approved purchase contract',
                            content: {
                                'application/json': {
                                    schema: {
                                        type: 'array',
                                        items: {
                                            $ref: '#/components/schemas/Message'
                                        }
                                    }
                                }
                            }
                        },
                        '400': {
                            description: 'Bad request'
                        },
                        '500': {
                            description: 'Internal server error'
                        }
                    }
                }
            },
            '/RejectDocument': {
                post: {
                    tags: ['Contracts'],
                    summary: 'Reject a purchase contract',
                    description: 'Reject a purchase contract by ID',
                    requestBody: {
                        required: true,
                        content: {
                            'application/json': {
                                schema: {
                                    type: 'object',
                                    required: ['PurchaseContract'],
                                    properties: {
                                        PurchaseContract: {
                                            type: 'string',
                                            description: 'Purchase Contract ID',
                                            example: '4500000001'
                                        }
                                    }
                                }
                            }
                        }
                    },
                    responses: {
                        '200': {
                            description: 'Successfully rejected purchase contract',
                            content: {
                                'application/json': {
                                    schema: {
                                        type: 'array',
                                        items: {
                                            $ref: '#/components/schemas/Message'
                                        }
                                    }
                                }
                            }
                        },
                        '400': {
                            description: 'Bad request'
                        },
                        '500': {
                            description: 'Internal server error'
                        }
                    }
                }
            }
        }
    };

    // Options for the swagger docs
    const options = {
        definition: swaggerDefinition,
        apis: ['./srv/*.js'], // Path to the API docs
    };

    // Initialize swagger-jsdoc
    const swaggerSpec = swaggerJSDoc(options);

    // Serve swagger docs
    app.use('/api-docs', swaggerUI.serve, swaggerUI.setup(swaggerSpec));

    // Serve swagger specs as JSON
    app.get('/api-specs', (req, res) => {
        res.setHeader('Content-Type', 'application/json');
        res.send(swaggerSpec);
    });

    console.info('✅ Swagger documentation initialized at /api-docs');
};