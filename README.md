# ELSA Keycloak

Tällä projektilla kuvataan ELSA:n Keycloak-kuvakkeen rakentaminen. Alkuperäiseen kuvakkeeseen lisätään ELSA:n asetukset, käännökset ja tyylit.

## Kuvakkeen rakentaminen
```
docker build -t elsa/keycloak:10.0.2 .
```

## Kuvakkeen testaaminen paikallisesti
Suorita ```docker-compose up``` ja navigoi osoitteeseen http://localhost:9080/
