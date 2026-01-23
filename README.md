# bookamrks-src

This repo is a template to create more repos for jekyll based repo.

## Getting started

1. Create new repo using this template `Use this template` -> `Create a new repository`.

## Running on local

1. stop server - `sh scripts/localhost.sh git`
2. start server - `sh scripts/localhost.sh start`
   1. This will open chrome browser or you can visit [localhost:9999/my-repo](http://localhost:9999/my-repo)
   2. Initially, you will see error page `This site can’t be reached`
   3. after some time when container has started, you will see the site running
3. stop server - `sh scripts/localhost.sh stop`

## Troubleshooting

Official documentation for jekyll is [here](https://jekyllrb.com/)

### Port already used

```bash
scripts/localhost.sh kill
```

## Deploy

1. Delete the _site folder
2. run the build command to generate _site folder in private repo
3. copy the contents of _site to public repo
4. push the changes to public repo
