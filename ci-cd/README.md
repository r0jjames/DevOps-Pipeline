# CI/CD Tool Setup and Account Information

## SonarQube
### Setup
Follow the steps in this guide to install SonarQube using Docker Compose on Ubuntu Linux and perform code analysis:  
[How to Install SonarQube Using Docker Compose on Ubuntu Linux](https://medium.com/@chiemelaumeh1/how-to-install-sonarqube-using-docker-compose-on-ubuntu-linux-perform-code-analysis-using-98dfe2eb7044)

### Default Credentials
- **Username:** admin
- **Password:** admin

### Custom Account Credentials
- **Username:** admin
- **Password:** sonar



## Nexus
### Setup
Follow the steps in this guide to install Sonatype Nexus 3 using Docker Compose and set up Nexus Repository Manager for a Node.js project:  
[Install Sonatype Nexus 3 Using Docker Compose](https://medium.com/@chiemelaumeh1/install-sonatype-nexus-3-using-docker-compose-setup-nexus-repository-manager-for-node-js-project-47a3c5efe1ee)

### Retrieve Admin Password
Run the following command to get the admin password:
```sh
docker exec -it ci-cd-nexus-1 cat /nexus-data/admin.password
```
### Custom Account Credentials
- **Username:** admin
- **Password:** nexus



## Jenkins
### Setup
To install and run Jenkins using Docker Compose, follow the detailed instructions provided in this guide: [How to Install and Run Jenkins with Docker Compose](https://www.cloudbees.com/blog/how-to-install-and-run-jenkins-with-docker-compose)
## Retrieve Initial Admin Password
To retrieve the initial admin password for Jenkins, run the following command:
```sh
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

### Custom Account Credentials
- **Username:** admin
- **Password:** jenkins
