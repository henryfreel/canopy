Canopy

First time cloning locally:
1. copy project url from master repo
2. bundle install
3. rake db:create
4. rake db:migrate
5. rake db:seed
6. brew install imagemagick

Steps to take everytime database or migrations change:
1. turn off rails server
2. rake db:migrate:reset
3. rake db:seed
4. restart rails server

ERM
![Alt text](/app/assets/images/CanopyERM.jpg "Canopy ERM")

WIREFRAMES
![Alt text](/app/assets/images/Wireframe1.jpg "Wireframe - Project Page")
![Alt text](/app/assets/images/Wireframe2.jpg "Wireframe - Project Flow")
