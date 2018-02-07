* What is the project architecture:

    This project is architectured around microservices design please refer to the followin URL for more info on microservice architecture.
    http://lsconfluence.logicsolutions.com.cn/display/QCS/Micro+Services+Research

    For FAQ's plase visit the following URL:
    http://lsconfluence.logicsolutions.com.cn/pages/viewpage.action?pageId=2262500

* Development Notes:

    Currently the projects that has logic- prefix are not used, they are kept from previous versions for later reference. So
    please ignore them if you are a new starter.

  ** SUPPORT SERVERS
    *** api-server:
        API server is the swagger UI for the micro services for front end developers to visit and gather information
        about the backend interface, it is set to run on port 8762

  ** BUSINESS SERVERS
    *** system-server:
        System server is set to run on port 8090, it manages the system actions for back-end servers. The Authentication is
        provided by this server as well. System server is set to use MYSQL.

  ** Nginx setup
    +++++++++++++++++++++++++++++++++++++++++++++++++
	     location /api/ {
	         index index.html index.htm index.jsp index.action;
	
	         proxy_set_header X-Real-IP $remote_addr;
	         proxy_set_header Host $host;
	         proxy_set_header X-Forwarded-Host $host;
	         proxy_set_header X-Forwarded-Server $host;
	         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	         proxy_pass http://127.0.0.1:8762/;
	     }
	
	     location /system/ {
	         index index.html index.htm index.jsp index.action;
	
	         proxy_set_header X-Real-IP $remote_addr;
	         proxy_set_header Host $host;
	         proxy_set_header X-Forwarded-Host $host;
	         proxy_set_header X-Forwarded-Server $host;
	         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	
	
	        proxy_pass http://127.0.0.1:8090/;
	     }  
	 +++++++++++++++++++++++++++++++++++++++++++++++++      

* Need to add a new server? (we are not support on this for now.)
    Please reference template-server for creating a new microservice for the system.


* System server development notes:

    System server is using spring boot and spring framework 4.0. for application configurations please checkout the
    config package. The service layer is under service package and repository layer is held under persistence package.

    Please check and try to understand the resources/application.yml file for configuration. We currently have 5 profiles

        dev: this is the development profile and everything is set to local host.
        alp: this is alpha site profile.
        bta: this is for beta site.
        stg: this is for staging site.
        prd: this is for production site.

* Getting started:

    Please import the project to your IDE as maven project and target the root pom.xml, since all the other
    projects are modules under this parent pom.

    You will need to have mysql running on your local and it should have a database named facts_backend, please do run
    the sql scripts under database/mysql folder

    It is as easy as pointing the SystemServerApplication.java file and right click run. Everything should work fine if the configuration
    is correct.

* Staging ops:
    - First checkout the project from svn with credentials
    - Go to the project_root/scripts folder
    - There is a toshiba bash script to manage the progress
        
    - Build the projects:
        $ ./server.sh -b

    - Start all servers:
        $ ./server.sh -m startall4[profile]

    - Stop all servers:
        $ ./server.sh -m stopall

    - Extra commands:
        - To build and start the servers run:
            $ ./server.sh -m startall -b

        - You can check available options by:
            $ ./server.sh -h

    - If the script some how can not run make sure executable flag is on
        $ sudo chmod 755 ./server.sh


* Configuration properties (Major):

    Authentication Configurations (for login):

        We are currently supporting OAuth 2.0 security framework, which enables stateless authentication
        between client applications and Authentication server, Since OAuth is implemented as part of System
        Server, the configuration will be under System server application configuration.

        - authentication.oauth.clientId : The required client Id to get a valid token
        - authentication.oauth.secret : The secret key to get a valid token
        - authentication.oauth.tokenValidityInSeconds : How long the token for a user should be valid.

        The parameters will be used once we try login to the system from a client application.

    Logic custom properties:

        JNDI properties:

            We are using JNDI to communicate with databases, since our application can support both jar and war
            packaging, the properties also be used once creating context on embedded tomcat for jar packaging.
            Major JNDI properties are as below:

            - logic.jndi.master.name : The master jndi name property for writing
            - logic.jndi.master.factory : The master datasource factory, this will be different for each database type.
            - logic.jndi.master.maxActive : The master maximum active connections property
            - logic.jndi.master.initialSize : The master initial connections property on startup
            - logic.jndi.master.maxWait : The master maximum waiting thread number property for having connection to db
            - logic.jndi.master.driverClassName : the database driver class name, will be specific to database type
            - logic.jndi.master.url : the database access url
            - logic.jndi.master.databaseId : the database id, currently we support "oracle" and "mysql"
            - logic.jndi.master.username : the datbase user name if available
            - logic.jndi.master.password : the user password if available


            Same properties are also available for slave which is for reading from database.

        Swagger properties:

            We are using swagger UI for API documentation, hence we have some configurations to setup to correctly use it.

            - logic.swagger.version : not a major property, you can tag your API version here, it will be shown on swagger UI
            - logic.swagger.basePath : important one, it should match exact same path as configured in edge-server
            - logic.swagger.description: will be shown on swagger UI in description field, not important
            - logic.swagger.title: The title of the documentation
            - logic.swagger.licence: The licence if available
            - logic.swagger.licenceUrl: the url for licence
            - logic.swagger.contact: information for contact
            - logic.swagger.termsOfServiceUrl: The url for terms of service policy
            - logic.swagger.resourcePackage: IMPORTANT, this has to be the exact package that holds the rest resource in the source code

        JPUSH

            - logic.jpush.masterSecret: The master secret key for jpush
            - logic.jpush.appKey : the app key for jpush

        File

            System server has the ability to upload files to server, hence we need configuration for saving
            the uploaded files and reaching them later on

            - logic.file.path.local: the physical location of the file
            - logic.file.path.remote: the access point to the server to get the files

        WSDL

            System server needs to connect toshiba vendor API over SOAP calls hence we need configuration on
            setting up the correct WSDL

            - logic.wsdl.notify-url: The Writeback status API endpoint
            - logic.wsdl.service-url: The WSDL meta data url
            - logic.wsdl.context-package: The package info that holds the WSDL resources. Needed for setting up marshalling and unmarshalling

* Questions:

    Please connect Ronnie for any questions: ronnie.jin@logicsolutions.com.cn

