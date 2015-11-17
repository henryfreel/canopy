# Canopy
https://project-canopy.herokuapp.com/

## Overview
Canopy is a go-to sharing resource for web developers, programmers and engineers. We set out to build a resource where live projects, code snippets, and interaction between developers are all in one place. Live projects are embedded and rendered on the site so that visitors can interact with them without leaving Canopy.

## Steps to Run Locally
1. Clone project url from master repo
2. bundle install
3. rake db:create
4. rake db:migrate
5. rake db:seed
6. brew install imagemagick

## API Reference
You will need to request an API key from Screenshotmachine and create a .env file in the root directory. Your .env file should contain the following:
*S3_BUCKET=project-canopy
*S3_PUBLIC_KEY='KEY'
*S3_SECRET='KEY'

## Technologies Used
* Highlight.js
* jQuery
* Bootstrap
* Paperclip
* Screenshot Machine API

## Contributors
* Alex Chan - https://github.com/alex415
* Zoe Foss - https://github.com/zoejf
* Henry Freel - https://github.com/henryfreel
* Annie Peng - https://github.com/astp

## Planning
![Alt text](/app/assets/images/CanopyERM.jpg "Canopy ERM")

## Wireframes
![Alt text](/app/assets/images/Wireframe1.jpg "Wireframe - Project Page")
![Alt text](/app/assets/images/Wireframe2.jpg "Wireframe - Project Flow")

## What We'd Do With More Time
* Comments
* Show the projects that you like on your profile page
* Ability to change password, with validation/confirmation
* Sort Projects on the home page by 'most popular' and other attributes
* OAuth with Github
* Add tiles gem so projects boxes on index page can be different sizes
* Tags for people's skillsets and stack
* Ability to "follow" other users
