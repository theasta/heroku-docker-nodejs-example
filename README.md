# heroku-docker-nodejs-example

## Deploying to heroku

```
heroku create
heroku container:login
heroku container:push web -a <yourappname>
heroku container:release web -a <yourappname>
heroku open
```

## Local development

You first need to create a `.env.js` at the root:
`echo 'PORT=3001' > .env`
This file is ignored by git and docker.

Then:
`docker-compose up`
