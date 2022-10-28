# README

## Introduction ##

The KS Hub is a web application built using the Ruby on Rails framework and hosted in Heroku. This application was developed for use by the Texas A&M Chapter of the Kappa Sigma Fraternity. The app includes an Announcements board for administrators to post for the general members, an events page with a list of upcoming fraternal events, a merchandise page containing links to chapter merchandise, and a roster page to view all of the current members of the chapter. Users sign up using their TAMU email, and provide information such as their name, major, pledge class, and phone number.

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/mahirahsamah/kshub.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd kshub`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Deployment ##

1. From the Heroku Dashboard
Click the New button in the top right of your app list and select Create new pipeline:

Note: if there’s no app in a pipeline, the pipeline will disappear. Therefore we need to configure some apps as default.

2. Enable Review Apps. Do NOT select any options for this assignment. Click “Enable Review Apps” right away.

3. Click “New app” in Review Apps. Choose the test branch. After you click “Create”, Heroku will start deploying immediately. Every time you make changes to the test branch, it triggers automatic deployment.

4. Install heroku cli from here based based on your os. (https://devcenter.heroku.com/articles/heroku-cli)

5. After installing type `heroku login` on your terminal and follow instructions on command line to login.

6. We also need to create an app for staging.

  `heroku create --stack heroku-20 stage-kshub-app-1-<name>`

  This command will create an app and go to GUI pipeline and select add app under staging and select this new app you just created with CLI.

11. Click on the stage-kshub-app-1. Click Deploy. Choose the main branch for Automatic Deploys.


## CI/CD ##

TBD

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.

