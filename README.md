## Simple Slack Bot - NASA

It uses NASA's most API [APOD].

### Development

While making it I've used Slack's tutorial for [making bots with Ruby].

### Runing a bot locally

ToDo

```
foraman start
```

### Deploy it on Heroku

- [ToDo] Configure Heroku toolbelt locally
- From the comfort of your terminal create new app on Heroku

    ```bash
    heroku create <app-name>
    ```
- Add environment variables to this app with commands similar to the following.
We'd like to execute this for every variable listed in our .env file.

    ```bash
    heroku config:add ENV_VAR_NAME=<its-value>
    ```

- Deploy it by running the following command locally

    ```bash
    git push heroku master
    ```
### Set up an automatic deployment on Semaphore

After every branch has been merged to master, we can set up [Semaphore server]
which will deploy our bot automatically. Additionally, if when Scheduled Builds
are enabled for the master branch on Semaphore, application will automatically be re-deployed.
This will wake up Heroku's dyno :) and our bot will be active.

[APOD]: https://api.nasa.gov/api.html#apod
[making bots with Ruby]: https//github.com/slack-ruby/slack-ruby-bot/blob/master/TUTORIAL.md
[Semaphore server]: https://semaphoreci.com/docs/deploying-to-heroku.html
