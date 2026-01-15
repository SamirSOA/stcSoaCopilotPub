# Oracle AIA Workspace - README

## Overview

This workspace provides a complete Oracle Application Integration Architecture (AIA) development environment for building SOA-based integration solutions.

## Workspace Structure

### AIAComponents/
Contains all AIA integration components organized by layer:

- **ApplicationConnector/**: Integration services that connect to external applications
  - BPEL/: BPEL process implementations
  - ESB/: Enterprise Service Bus routing services
  - Mediator/: Mediator components for message routing and transformation
  - BusinessServices/: Business service implementations

- **EnterpriseBusinessServices/**: Core business services layer
  - BPEL/: Business process implementations
  - ESB/: Service routing and orchestration
  - Mediator/: Business service mediators

- **ProcessIntegrationPacks/**: Pre-built integration processes
  - BPEL/: Standard BPEL processes
  - BPMN/: Business Process Model and Notation implementations

### AIAMetaData/
Configuration and metadata for AIA framework:

- **AIAConfigurationProperties/**: Environment and runtime configuration
  - AIA.properties: Core AIA configuration settings

- **AIAExtensions/**: Custom extensions and customizations
  - extensions.properties: Extension configuration

- **SchemaExtensions/**: Extended schema definitions

### Infrastructure/
Shared infrastructure components:

- **Libraries/**: Reusable Java libraries and utilities
- **Schemas/**: XSD schema definitions
  - CommonTypes.xsd: Common data type definitions
- **WSDL/**: Web Service Definition Language files
  - SampleService.wsdl: Sample service definition
- **XSL/**: XSL transformations
  - CommonTransformation.xsl: Common XSLT templates

### DeploymentScripts/
Build and deployment automation:

- **ant/**: Apache Ant build scripts
  - build.xml: Main Ant build file
  - build.properties: Build configuration

- **maven/**: Apache Maven build configuration
  - pom.xml: Maven project configuration

## Prerequisites

1. Oracle SOA Suite 12c or higher
2. Oracle JDeveloper 12c (for development)
3. Oracle WebLogic Server
4. Java Development Kit (JDK) 1.8 or higher
5. Apache Ant 1.9+ or Apache Maven 3.6+ (for deployment)

## Environment Setup

### 1. Oracle Middleware Configuration

Set the following environment variables:

```bash
export ORACLE_HOME=/path/to/oracle/middleware
export MW_HOME=/path/to/oracle/middleware
export JAVA_HOME=/path/to/jdk
export ANT_HOME=/path/to/ant
```

### 2. SOA Server Configuration

Update the configuration in `AIAMetaData/AIAConfigurationProperties/AIA.properties`:

- Set `soa.server.host` to your SOA server hostname
- Set `soa.server.port` to your SOA server port
- Configure database connection details
- Update JMS and security settings as needed

### 3. Build Configuration

Update `DeploymentScripts/ant/build.properties` or `DeploymentScripts/maven/pom.xml`:

- Set server connection details
- Configure deployment partition
- Set authentication credentials

## Development Workflow

### 1. Create New Components

Use Oracle JDeveloper to create new SOA composites:

1. Create a new SOA Application
2. Add BPEL processes, Mediators, or Business Rules
3. Save components in the appropriate AIAComponents directory
4. Define service interfaces in Infrastructure/WSDL
5. Create schemas in Infrastructure/Schemas

### 2. Build Components

Using Apache Ant:
```bash
cd DeploymentScripts/ant
ant clean compile package
```

Using Apache Maven:
```bash
cd DeploymentScripts/maven
mvn clean install
```

### 3. Deploy to Server

Using Ant:
```bash
cd DeploymentScripts/ant
ant deploy
```

Using Maven:
```bash
cd DeploymentScripts/maven
mvn soa:deploy
```

## Component Organization

### Application Connector Layer
- Connects to external systems
- Handles protocol conversion
- Implements adapter services
- Located in: `AIAComponents/ApplicationConnector/`

### Enterprise Business Services Layer
- Core business logic
- Business process orchestration
- Business rules implementation
- Located in: `AIAComponents/EnterpriseBusinessServices/`

### Process Integration Packs
- Pre-built industry processes
- Cross-application processes
- Integration patterns
- Located in: `AIAComponents/ProcessIntegrationPacks/`

## Configuration Management

### AIA Properties
Main configuration file: `AIAMetaData/AIAConfigurationProperties/AIA.properties`

Key settings:
- Environment configuration (DEV/TEST/PROD)
- Server connection details
- Database configuration
- JMS settings
- Error handling configuration
- Security policies

### Extensions
Custom extensions: `AIAMetaData/AIAExtensions/extensions.properties`

Configure:
- Custom business services
- XREF mappings
- DVM locations
- Custom error handlers
- Audit settings

## Best Practices

1. **Naming Conventions**
   - Use descriptive names for composites and processes
   - Follow AIA naming standards: `<Application><Object><Verb>Service`
   - Use version numbers in composite revisions

2. **Error Handling**
   - Implement comprehensive fault handlers in all BPEL processes
   - Use AIA Error Hospital for error management
   - Configure error notifications

3. **Logging**
   - Use appropriate logging levels
   - Include correlation IDs in all messages
   - Enable audit trails for production environments

4. **Testing**
   - Unit test all components before deployment
   - Use SOA Composer for testing deployed services
   - Implement integration tests

5. **Version Control**
   - Commit all source files to version control
   - Tag releases appropriately
   - Document changes in commit messages

## Deployment Architecture

```
┌─────────────────────────────────────────┐
│   Process Integration Packs (PIP)      │
│        Business Processes               │
└────────────────┬────────────────────────┘
                 │
┌────────────────▼────────────────────────┐
│  Enterprise Business Services (EBS)     │
│     Core Business Services              │
└────────────────┬────────────────────────┘
                 │
┌────────────────▼────────────────────────┐
│   Application Connector Services        │
│     External System Integration         │
└─────────────────────────────────────────┘
```

## Troubleshooting

### Common Issues

1. **Deployment Failures**
   - Check server connectivity
   - Verify credentials in build.properties
   - Review server logs in $DOMAIN_HOME/servers/soa_server1/logs

2. **Compilation Errors**
   - Ensure all dependencies are available
   - Check WSDL and XSD references
   - Verify ORACLE_HOME is set correctly

3. **Runtime Errors**
   - Check AIA.properties configuration
   - Review error hospital for fault details
   - Enable debug logging if needed

## Additional Resources

- Oracle AIA Documentation: https://docs.oracle.com/middleware/aia/
- Oracle SOA Suite Documentation: https://docs.oracle.com/middleware/soa/
- AIA Foundation Pack: https://www.oracle.com/middleware/technologies/

## Support

For issues and questions:
- Review server logs
- Check AIA Error Hospital
- Consult Oracle Support documentation

## License

Copyright (c) 2026 STC SOA. All rights reserved.
