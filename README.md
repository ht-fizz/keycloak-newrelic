# Keycloak Docker image with New Relic

Keycloak Server Docker image.
Current Support following versions of Keycloak
- 3.4.3.Final

## Usage
The usage is exactly same as [keycloak docker image](https://hub.docker.com/r/jboss/keycloak). 

A sample container with 
- Admin Credentials (user: `admin`, password: `admin`)
- Running on port `8180`
- With Valid `NEW_RELIC_LICENSE_KEY` and `NEW_RELIC_APP_NAME`

will run via following command

    docker run 
        -h keycloak.host 
        -e KEYCLOAK_USER=admin
        -e KEYCLOAK_PASSWORD=admin
        -e NEW_RELIC_APP_NAME=<APPNAME> 
        -e NEW_RELIC_LICENSE_KEY=<KEY> 
        --name keycloak 
        -p 0.0.0.0:8180:8080 
        fizzcorp/keycloak-newrelic:3.4.3.Final

Please note that `keycloak.host` will be the name of node that you see in new relic. 
Newrelic charges on the basis of number of instances pushing data to an application. 

# How to Contribute

If you don't see the keycloak version that you want to use with new relic, instructions will be available soon.
- ~~See the content of Dockerfile~~


