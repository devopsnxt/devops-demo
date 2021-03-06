# Spring devops-demo Sample Application 

## Running devops-demo locally
```
	git clone https://github.com/devopsnxt/devops-demo.git
	cd devops-demo
	./mvnw spring-boot:run
```

You can then access devops-demo here: http://localhost:8080/

<img width="1042" alt="devops-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

## Database configuration

In its default configuration, Devops-demo uses an in-memory database (HSQLDB) which
gets populated at startup with data. A similar setup is provided for MySql in case a persistent database configuration is needed.
Note that whenever the database type is changed, the data-access.properties file needs to be updated and the mysql-connector-java artifact from the pom.xml needs to be uncommented.

You could start a MySql database with docker:

```
docker run -e MYSQL_ROOT_PASSWORD=devops -e MYSQL_DATABASE=devops -p 3306:3306 mysql:5.7.8
```
