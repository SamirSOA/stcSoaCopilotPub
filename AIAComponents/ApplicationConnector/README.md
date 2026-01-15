# Application Connector Layer

## Purpose
Application Connector Services provide the interface between AIA and external applications. They handle:
- Protocol conversion (HTTP, JMS, File, Database, etc.)
- Application-specific message formatting
- Connection pooling and error handling
- Adapter configuration

## Components

### BPEL/
BPEL processes that implement application connector logic:
- `SampleBPELProcess.bpel`: Template BPEL process
- `composite.xml`: SOA composite definition

### ESB/
Enterprise Service Bus routing services for message routing and transformation.

### Mediator/
Mediator components for lightweight routing and transformation.

### BusinessServices/
Reference bindings to external application services.

## Development Guidelines

1. **Naming Convention**: `<ApplicationName><Operation>ABCS`
   - Example: `SalesforceCreateAccountABCS`

2. **Error Handling**:
   - Implement fault handlers for all external service calls
   - Use AIA Error Hospital for recoverable errors
   - Log all interactions with external systems

3. **Configuration**:
   - Externalize endpoint URLs and credentials
   - Use DVM for environment-specific values
   - Configure connection pools appropriately

## Deployment

Application Connectors are deployed as SOA composites to the configured partition.
