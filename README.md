# STC SOA Copilot - Oracle AIA Workspace

Oracle Application Integration Architecture (AIA) workspace for SOA-based integration development.

## Overview

This repository provides a complete Oracle AIA workspace structure for developing, building, and deploying SOA integration solutions. It follows Oracle AIA best practices and includes pre-configured components, metadata, and deployment scripts.

## Quick Start

1. **Prerequisites**: Oracle SOA Suite 12c, JDeveloper 12c, Java 1.8+
2. **Configuration**: Update settings in `AIAMetaData/AIAConfigurationProperties/AIA.properties`
3. **Build**: Use Ant (`ant build`) or Maven (`mvn clean install`)
4. **Deploy**: Use `ant deploy` or `mvn soa:deploy`

## Workspace Structure

- **AIAComponents/**: Integration components (Application Connectors, Business Services, Process Packs)
- **AIAMetaData/**: Configuration properties and extensions
- **Infrastructure/**: Shared schemas, WSDLs, and XSL transformations
- **DeploymentScripts/**: Ant and Maven build/deployment scripts

## Documentation

For detailed documentation, see [AIA_WORKSPACE_README.md](AIA_WORKSPACE_README.md)

## Features

✅ Complete AIA workspace structure  
✅ Pre-configured build scripts (Ant & Maven)  
✅ Sample SOA composites and services  
✅ Common schemas and transformations  
✅ Environment configuration templates  
✅ Deployment automation  

## Architecture

The workspace follows Oracle AIA's three-layer architecture:
1. **Application Connector Services**: External system integration
2. **Enterprise Business Services**: Core business logic
3. **Process Integration Packs**: End-to-end business processes

## Support

For detailed setup instructions, troubleshooting, and best practices, refer to the [comprehensive documentation](AIA_WORKSPACE_README.md).

---

**License**: Copyright (c) 2026 STC SOA. All rights reserved.