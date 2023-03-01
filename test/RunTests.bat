@echo off

cd gtestDocker
docker-compose run --rm gtests
cd ..