# RiceVotes

This application is original content of Youtube.
Ask the viewers to vote.

# Youtube

[![Programming Votes](http://img.youtube.com/vi/PXxIwdJKNCI/0.jpg)](http://www.youtube.com/watch?v=PXxIwdJKNCI)

# Webpage

[https://ricevotes.herokuapp.com](https://ricevotes.herokuapp.com)

# how to

```sh
$ git clone git@github.com:RiceCookers/RiceVotes.git
$ cd RiceVotes
$ bundle install
$ bundle exec rails db:migrate
```

## using cloudinary

getting [cloudinary](https://cloudinary.com) api token and key.
and setting env variables.

# Test

using Rails MiniTest.

```
$ bundle exec rails db:migrate RAILS_ENV=test
$ bundle exec rails test
```