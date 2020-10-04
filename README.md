# ELSA Keycloak

[![Build Status](https://dev.azure.com/elsa-hanke/ELSA/_apis/build/status/elsa-hanke.elsa-keycloak?branchName=main)](https://dev.azure.com/elsa-hanke/ELSA/_build/latest?definitionId=5&branchName=main)

Tätä projektia käytetään ELSA:n Keycloak-konttikuvan rakentamiseen. Alkuperäiseen konttikuvaan lisätään ELSA:n asetukset, käännökset ja tyylit.

## Konttikuvan rakentaminen
```
docker build -t elsa/keycloak:10.0.2 .
```

## Konttikuvan testaaminen paikallisesti
Suorita ```docker-compose up --scale keycloak=2``` ja navigoi osoitteeseen http://localhost:9080/
