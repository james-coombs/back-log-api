#!/bin/bash

curl --include --request POST https://back-log.herokuapp.com/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email3",
      "password": "an example password3"
    }
  }'


  curl --include --request POST https://back-log.herokuapp.com/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "an@example.email",
        "password": "an example password"
      }
    }'
