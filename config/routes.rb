Rails.application.routes.draw do
  #pages
  root 'pages#index'
  get '/about', to:'pages#show'

  #users
  get '/signup', to: 'users#new'
  get '/canopy-:username', to: 'users#show', as: 'show_user'
  get '/canopy-:username/edit', to: 'users#edit', as: 'edit_user'
  resources :users, except: [:new, :show, :edit]

  #sessions
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #projects
  resources :projects

end

# Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            pages#index
#        about GET    /about(.:format)             pages#show
#       signup GET    /signup(.:format)            users#new
#    show_user GET    /canopy-:username(.:format)  users#show
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user PATCH  /users/:id(.:format)         users#update
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