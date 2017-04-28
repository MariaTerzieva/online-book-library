== README

This README gives step by step instructions on how to run the app.

Complete list of the gems used can be found in the Gemfile.

How to run the app:

* First clone this repository to your machine

* Next run `bundle install` to install the gems

* Run `rake db:migrate`

* Run `rake db:test:prepare` (Although there is just one test. I didn't have time to write the others.)

* Open the project in a console and run `rails s`

* Open http://localhost:3000 to go to the website

* You need to first sign up and then you can log in with your credentials

Notes:

* You can create books without being logged in but you can view existing books
and modify them only when logged in

* The front-end side doesn't look very good due to lack of time.

* There is just one test. I didn't have time for others. I tried but ran into some
technical problems and decided that it is wiser to implement the functionality and
not lose more of the time trying to fix these problems because time was running out.

* I also implemented the search functionality a little bit different than required
because time was running out and I decided that it is better that I have the functionality
even if it looks different than required.

* To have pagination you need to have at least 4 books.
