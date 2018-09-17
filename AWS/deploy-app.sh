#!/bin/bash

git clone https://github.com/jknap/calendar.git

cd cryptowatch

docker-compose up -d

docker-compose logs -f -t
