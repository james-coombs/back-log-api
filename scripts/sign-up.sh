#!/bin/bash

curl --include --request POST https://back-log.herokuapp.com/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email3",
      "password": "an example password3",
      "password_confirmation": "an example password3"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
