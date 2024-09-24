Starter Project - Fast Healthcare Interoperability Resources (FHIR®) Implementation Guide
---
This starter project will provide a base FHIR® Implementation Guide (IG) for IG Authors.
<br> </br>
In addition, an IG Author getting started with FHIR® can also follow a few easy steps to:
<ol>
    <li>Install Health Level Seven's (HL7®) FHIR® IG Auto-Builder</li>
    <li>Install a Local HL7® application programming interface (HAPI) FHIR® Instance (Docker starter project)</li>
    <li>Deploy a FHIR® IG to the local HAPI FHIR® Instance</li>
</ol>

### FHIR® IG Auto-Builder
This will allow you to see your automatically generated and published FHIR® IG (Continuous Build).
<br> </br>
In order to enable this automatic generation of FHIR® IG artifacts, install the IG Auto-Builder: __https://github.com/apps/fhir-ig-builder__. 
<br> </br>
The continous build IG for this Starter Project can be seen here: __https://build.fhir.org/ig/jembi/Starter-FHIR-IG/index.html__
<br></br>

>**NOTE**
<br> </br>
For more information, see __https://github.com/fhir/auto-ig-builder?tab=readme-ov-file#quick-start-guide__
<br> </br>

After about 3 - 5 minutes (maybe even longer depending on the size of your FHIR® IG), you will be able to see your published build using __https://build.fhir.org/ig/usernameOrOrganization/gitHubRepoName/branches/master__. You can also view a published build for a specific branch: __https://build.fhir.org/ig/usernameOrOrganization/gitHubRepoName/branches/__.

### HAPI FHIR® Starter Project (Docker Hub)
Ensure that you have all prerequisites installed as documented here: __https://github.com/hapifhir/hapi-fhir-jpaserver-starter/tree/master#prerequisites__.
<br> </br>
<strong>Step 1</strong>: Run the following two commands from a terminal window to build a Docker image for HAPI FHIR®:
```docker
    docker pull hapiproject/hapi:latest
    docker run -p 8080:8080 hapiproject/hapi:latest
```
<strong>Step 2</strong>: Create a folder on your machine and copy the following two files to that location:

##### File 1: docker-compose.yml
```yaml
services:
  fhir:
    container_name: fhir
    image: "hapiproject/hapi:latest"
    ports:
      - "8080:8080"
    configs:
      - source: hapi
        target: /app/config/application.yaml
    depends_on:
      - db

  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: admin
      POSTGRES_USER: admin
      POSTGRES_DB: hapi
    volumes:
      - ./hapi.postgress.data:/var/lib/postgresql/data

configs:
  hapi:
    file: ./hapi.application.yaml

```
##### File 2: hapi.application.yaml
```yaml
spring:
  datasource:
    url: "jdbc:postgresql://db:5432/hapi"
    username: admin
    password: admin
    driverClassName: org.postgresql.Driver
  jpa:
    properties:
      hibernate.dialect: ca.uhn.fhir.jpa.model.dialect.HapiFhirPostgresDialect
      hibernate.search.enabled: false
hapi:
  fhir:
    default_encoding: json
    fhir_version: R4
    #ig_runtime_upload_enabled: true #Enable when using a HTTP POST Request to submit Base64 encoded data for an Implementation Guide (IG).
    enable_repository_validating_interceptor: true #Enable if you want HAPI to validate messages against the installed IG. Recommended!
    implementationguides: #Install all dependencies referenced in your IG.
      some_ig_1_0_0: #A unique name that you will identify for the IG object. Recommend IgName_IGVersion
        installMode: STORE_AND_INSTALL #Need this to ensure that the IG is installed
        name: some.ig.package.r4
        version: 1.0.0
        packageUrl: https://build.fhir.org/ig/usernameOrOrganization/gitHubRepoName/branches/master/package.r4.tgz #an example package
```
### Start HAPI FHIR and Deploying a FHIR® IG:
<strong>Step 1</strong>: Launch a terminal window and point its context to the directory where you copied the two above files.
<br> </br>
<strong>Step 2</strong>: Execute the following command to run your HAPI FHIR® image using the configuration applied in the two files above:
```docker
    docker compose up
```

>**NOTE**
<br> </br>
For more information about docker compose commands, see __https://docs.docker.com/reference/cli/docker/compose/#subcommands__
<br> </br>

<strong>Step 3</strong>: Monitor the terminal output for an indication when the FHIR® IG is installed or for any errors. 
<br> </br>
Once the FHIR® IG is installed, execute a GET Request using FHIR®'s [StructureDefintion Resource](https://hl7.org/fhir/R5/structuredefinition.html) to ensure that it is installed.
```
GET\ http://localhost:8080/fhir/StructureDefintion
```
---
