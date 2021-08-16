# Twitter-redesign

This is a simple social media app developed by using Ruby on Rails, HTML5&CSS3, and MySQL&Database. A user can create a profile with a profile and a background image, and post messages, follow others and be followed by others.

![screenshot](app/assets/images/twitter-pic.PNG)

## Features

In this project, following and posting opinions like posting a tweet features are implemented.

## Built With

- Ruby on Rails
- Active Record
- Bootstrap 4
- Ruby
- Rspec gem

## Rspec testing

> To test of models, write the following in your terminal:

```
$ rspec
```

## live version

Please click [Live demo](https://glacial-gorge-49167.herokuapp.com/)
You may use 'anonymous' as username and 'Anonymous' as full name to sign in.

## Setup

- Clone this repository (`git@github.com:verissimohenry/Twitter-redesign.git`)
- Open terminal
- Change directory by using `cd Twitter-redesign.git`
- Run `bundle install`
- Run `rails db:migrate`
- Open rails server by using `rails s`
- Open browser and go to http://localhost:3000

## Test app

- Follow steps given in Setup part
- Install Chrome from [main page of Chrome](https://www.google.com/chrome/) or [terminal](https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-20-04/)
- Run ` bundle exec rspec`

## Deploy to Heroku

- Sign in [Heroku](https://www.heroku.com/).
- Open your terminal.
- Run `heroku login`. If you get any error, run `sudo snap install --classic heroku` and [check](https://devcenter.heroku.com/articles/heroku-cli).
- Create an app by running `heroku create name-of-app`. You may use any name for name of your Heroku app.
- If you are using sqlite3 for database, update 'database.yml' file by [following steps](https://devcenter.heroku.com/articles/sqlite3).
- If you are using master branch,run `git push heroku master`. If you are using another branch, run `git push heroku +HEAD:master`.
- Run `heroku run rake db:migrate` your terminal.
- Open your app from your [dashboard of heroku](https://dashboard.heroku.com/).
- Push 'Open app' button to access your app from your dashboard of Heroku..

## AUTHOR

👤 **Verissimo Henry**

- Github: [@githubhandle](https://github.com/verissimohenry)
- Twitter: [@twitterhandle](https://twitter.com/verissimohenry)
- Linkedin: [linkedin](https://www.linkedin.com/in/henry-verissimo-618906167/)
- Email: verissimohenry04@gmail.com

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## License

- This project is [MIT](https://opensource.org/licenses/MIT) licensed.
- This project is [creativecommons](https://creativecommons.org/licenses/by-nc/4.0/) licensed.
