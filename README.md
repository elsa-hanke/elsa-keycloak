# ELSA Keycloak

Tätä projektia käytetään ELSA:n Keycloak-konttikuvan rakentamiseen. Alkuperäiseen konttikuvaan lisätään ELSA:n asetukset, käännökset ja tyylit.

## Konttikuvan rakentaminen
```
docker build -t elsa/keycloak:10.0.2 .
```

## Konttikuvan testaaminen paikallisesti
Suorita ```docker-compose up``` ja navigoi osoitteeseen http://localhost:9080/
