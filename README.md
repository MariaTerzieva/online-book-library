This README gives step by step instructions on how to run the app.

Complete list of the gems used can be found in the Gemfile.

How to run the app:

* First clone this repository to your machine

* Install imagemagick if you don't have it with `sudo apt-get install libmagickwand-dev imagemagick` on Ubuntu-based machines and `brew install imagemagick` for Mac

* Next run `bundle install` to install the gems

* Run `rake db:migrate`

* Run `rake db:test:prepare` (Although there is just one test. I didn't have time to write the others.)

* Open the project in a console and run `rails s`

* Open http://localhost:3000 to go to the website

* You need to first sign up and then you can log in with your credentials

Notes:

* You can create books without being logged in but you can view existing books
and modify them only when logged in.

* To have pagination you need to have at least 4 books.

Things to improve in the future:

* Do searching with AJAX and don't store searches in the database

* Write tests

* Fix the style of the button on the edit page

* Add navigation links

* After sign up log in the user

* Use rubocop

* Fix redirect URLs when some field not filled or filled wrong