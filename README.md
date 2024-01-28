# jekyll-template

This repo is a template to create more repos for jekyll based repo.

# Getting started
1. Create new repo using this template `Use this template` -> `Create a new repository`.
2. `git clone` your repo to your laptop.
3. Open in Editor, ex. Visual Studio Code
4. you should have these installed - `docker` and `chrome browser`
5. Run the command in terminal - `sh scripts/localhost.sh --new`
6. This creates basic folder structure.
7. Replace all instances of text `jekyll-template` with your repo name (example - `my-repo`), this will change below files
   1. `docker-compose.yml` - change `container_name: jekyll-template` to `container_name: my-repo`
   2. `localhost.sh` - `http://localhost:9999/jekyll-template/` to `http://localhost:9999/my-repo/`
8. `Gemfile` - add `gem "webrick"`
9. `_config.yml` - update `baseurl` as `/my-repo`

# Running on local
1. start server - `sh scripts/localhost.sh`
   1. This will open chrome browser or you can visit [localhost:9999/my-repo](http://localhost:9999/my-repo)
   2. Initially, you will see error page `This site can’t be reached`
   3. after some time when container has started, you will see the site running
2. stop server - `sh scripts/localhost.sh --stop`

# Troubleshooting

Official documentation for jekyll is [here](https://jekyllrb.com/)

## Port already used
```bash
# find process_id using the port
netstat -vanp tcp | grep 9999
# kill the process based on process_id
kill -9 <PROCESS_ID>
```

# Useful git commands

```
git fetch --all -p; git pull; git status;
git merge origin/main;
git push;
```

This is based on jekyll-theme [minima](https://github.com/jekyll/minima#contents-at-a-glance)
