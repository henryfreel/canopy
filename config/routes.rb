Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'pages/index'

  get 'pages/show'

  #pages
  root 'pages#index'
  get '/about', to:'pages#show'

  #users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users, except: [:new, :create]

  #sessions
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  #projects
  resources :projects

end

#       Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            pages#index
#        about GET    /about(.:format)             pages#show
#       signup GET    /signup(.:format)            users#new
#              POST   /signup(.:format)            users#create
#        users GET    /users(.:format)             users#index
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#        login GET    /login(.:format)             sessions#new
#     sessions POST   /sessions(.:format)          sessions#create
#       logout GET    /logout(.:format)            sessions#destroy
#     projects GET    /projects(.:format)          projects#index
#              POST   /projects(.:format)          projects#create
#  new_project GET    /projects/new(.:format)      projects#new
# edit_project GET    /projects/:id/edit(.:format) projects#edit
#      project GET    /projects/:id(.:format)      projects#show
#              PATCH  /projects/:id(.:format)      projects#update
#              PUT    /projects/:id(.:format)      projects#update
#              DELETE /projects/:id(.:format)      projects#destroy
