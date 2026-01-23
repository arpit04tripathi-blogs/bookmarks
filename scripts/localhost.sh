echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

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
  *)
    echo use either git/start/stop
    ;;
esac

echo
