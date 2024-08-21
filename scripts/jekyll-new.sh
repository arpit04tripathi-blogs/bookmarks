echo =========================================================
echo Creating new project
echo =========================================================

docker compose -f ./docker/docker-compose-new.yml up create-new

echo =========================================================
echo Created, Removing containers
echo =========================================================
docker compose -f ./docker/docker-compose-new.yml down
echo
