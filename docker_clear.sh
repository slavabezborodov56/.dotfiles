echo 'Kill all containers...'
if [[ $(docker ps -q) != "" ]]; then
	docker kill $(docker ps -q)
fi

echo 'Delete all containers...'
if [[ $(docker ps -a -q) != "" ]]; then
	docker rm $(docker ps -a -q)
fi

echo 'Delete all networks...'
docker network prune -f

echo 'Delete all volumes...'
docker volume prune -f

echo 'Done!'
