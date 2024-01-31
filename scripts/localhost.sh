echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

case $1 in
  --new)
    echo "Creating new project"
    docker compose -f ./docker/docker-compose.yml up create-new
    mv new_site/* .
    rm -r new_site
    ;;
  --stop)
    echo "running docker compose down"
    docker compose -f ./docker/docker-compose.yml down
    ;;
  *)
    echo docker compose up
    docker compose -f ./docker/docker-compose.yml up server -d
    cmd=$( open -a "Google Chrome" http://localhost:9999/try-theme-just-the-docs/ )
    echo opening chrome $cmd
    ;;
esac

echo
