# jekyll-template-src

This repo is a template to create more repos for jekyll based repo.

# Getting started
1. Create new repo using this template `Use this template` -> `Create a new repository`.

# Running on local
1. start server - `sh scripts/localhost.sh --start`
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

# Deploy

1. Delete the _site folder
2. run the build command to generate _site folder in private repo
3. copy the contents of _site to public repo
4. push the changes to public repo
