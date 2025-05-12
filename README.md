# Enhanced MyProxyCAP Service

This is an enhanced SAP CAP proxy service for S/4HANA Purchase Contracts API. It provides a simplified interface with additional features beyond basic API proxying.

## Features

1. **Expanded Entity Coverage**

   - Purchase Contracts
   - Contract Items
   - Contract Notes
   - Contract Partners

2. **Performance Optimization**

   - Response caching with 5-minute TTL
   - Intelligent cache invalidation on write operations

3. **Robust Error Handling**

   - Detailed error logging
   - Meaningful client-friendly error messages
   - Connection timeout and error recovery

4. **Interactive API Documentation**

   - Swagger/OpenAPI documentation
   - Interactive API testing interface

5. **Workflow Integration**
   - Exposed contract approval actions
   - Document rejection capability

## Getting Started

### Prerequisites

- Node.js 16 or higher
- NPM 7 or higher

### Installation

```bash
npm install
```

### Running the Application

Development mode with auto-reload:

```bash
npm run dev
```

Standard mode:

```bash
npm start
```

Watch mode:

```bash
npm run watch
```

## API Documentation

Once the application is running, you can access the interactive API documentation at:

```
http://localhost:4004/api-docs
```

## Endpoints

### Purchase Contracts

- **GET /proxy/A_PurchaseContract** - List all purchase contracts
- **GET /proxy/A_PurchaseContract('{id}')** - Get a specific purchase contract

### Contract Items

- **GET /proxy/A_PurchaseContractItem** - List all contract items
- **GET /proxy/A_PurchaseContractItem('{id}')** - Get a specific contract item

### Actions

- **POST /proxy/ApproveDocument** - Approve a purchase contract
- **POST /proxy/RejectDocument** - Reject a purchase contract

## Caching

The service implements intelligent caching with a 5-minute TTL (Time-To-Live). Cache entries are automatically invalidated when contracts are modified via approval or rejection actions.

## Error Handling

The service provides detailed error information:

- 400: Bad Request - For invalid input data
- 404: Not Found - When the requested resource doesn't exist
- 503: Service Unavailable - When the backend service is unreachable

## Security

The service requires authentication for all endpoints and implements role-based access control for specific operations.
