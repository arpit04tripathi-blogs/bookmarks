echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

PORT=9999

case $1 in
  git)
    echo "running command : git fetch --all -p; git pull; git status;"
    git fetch --all -p; git pull; git status;
    git merge origin/main;
    # git push;
    ;;
  start)
    echo docker compose up
    docker compose -f ./docker/docker-compose.yml up server -d
    cmd=$( open -a "Google Chrome" http://localhost:9999/bookmarks/ )
    echo opening chrome $cmd
    ;;
  stop)
    echo "running docker compose down"
    docker compose -f ./docker/docker-compose.yml down
    ;;
  kill)
    # echo $(netstat -vanp tcp | grep 9999)
    echo find process_id using the port $PORT and kill the process
    PROCESS_ID=$(lsof -t -i:$PORT)
    echo port $PORT is being used by $PROCESS_ID
    kill -9 $PROCESS_ID
    ;;
  *)
    echo use either git/start/stop
    ;;
esac

echo
