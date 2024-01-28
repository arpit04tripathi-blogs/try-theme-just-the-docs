echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

# echo "<=== info minima ===>"
# bundle info minima

if [[ $# -gt 0 ]] && [[ $1 = '--new' ]]
then
  echo "<=== Creating new Jekyll project ===>"
  jekyll new ./new_site
  mv new_site/* .
  rm -r new_site
else
  echo "<=== serve incremental ===>"
  jekyll serve --incremental
fi
