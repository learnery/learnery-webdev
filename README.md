[![Build Status](https://travis-ci.org/learnery/learnery.png?branch=master)](https://travis-ci.org/learnery/learnery)

[![Code Climate](https://codeclimate.com/github/learnery/learnery.png)](https://codeclimate.com/github/learnery/learnery)

README
========

Learnery is a rails app you can use to organize
open learning events, like railsbridge, barcamps, user groups,
meetups, hackathons.  You can adapt the theme to your 
liking and deploy the app to heroku in a few simple steps.

Here are some example installations with different themes:

![learnery with blank theme](http://learnery.github.io/images/screenshot-1.png) [learnery with blank theme](http://learnery.herokuapp.com/) 

![learnery with theme webdev](http://learnery.github.io/images/screenshot-2.png) [learnery with theme webdev](http://limitless-tor-9264.herokuapp.com/)

![learnery with theme coderdojo](http://learnery.github.io/images/screenshot-3.png) [learnery with theme coderdojo](http://ancient-tor-6627.herokuapp.com/)

![learnery with theme railsgirls](http://learnery.github.io/images/screenshot-4.png) [learnery with theme railsgirls](http://serene-badlands-9643.herokuapp.com/)


INSTALL
======

First clone this repository:

    git clone https://github.com/learnery/learnery.git my-learnery-site
    cd my-learnery-site/
    bundle install

Now you have to decide if you want to build your theme from scatch:

    rails generate theme
  
or if you want to for one of the themes from https://github.com/learnery to start with:
fork it into your own github account, say https://github.com/YOURGITHUB/theme-NAME.git
then:

    git submodule add https://github.com/YOURGITHUB/theme-NAME.git theme
   
Now you have a theme-folder in your app, you can
start your app now:
   
    rake db:migrate
    rails s
   
and play around with it on http://localhost:3000/

You can change the files in the themes-folder:

    theme/
    ├── README.md
    ├── initializer.rb = set locale, site name and description  
    ├── stylesheets
    │   ├── variables.css.less  = for bootstrap and you own stylesheet
    │   └── style.css.less      = your main stylesheet
    ├── images
    │   ├── favicon.ico         = favicon
    │   ├── slider-1.jpg        = any other images you want to add
    │   └── slider-2.jpg          use them with image_tag( 'slider-1.jpg' )
    └── views
        └── application
            ├── _footer.html.erb      = short text 
            └── _site_links.html.erb  = will be added to top navigation
            

When you are content with your changes commit your changes twice
(once inside the theme folder, once in the main folder)
but push only once (only your theme folder)


    cd theme
    git commit -a -m 'my important changes'
    git push origin master
    cd ..
    git add theme
    # DO NOT PUSH!
    


Then you can deploy to heroku:

    heroku create
    git push heroku master
    heroku run rake db:migrate
    heroku open
    
congratulations, your site is online!



WORK IN PROGRESS
==============

Backlog
---------------
moved to [Pivotaltracker](https://www.pivotaltracker.com/s/projects/829661)


Heroku
--------------

[http://learnery.herokuapp.com](http://learnery.herokuapp.com)


Things we may want to cover:
-----------

* Ruby version

    2.0.0

* System dependencies

   see gemfile

* Configuration

* Database creation

* Database initialization

* How to run the test suite

    rake

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

    git push heroku master



