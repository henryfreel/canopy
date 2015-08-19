Rails.application.routes.draw do
  get 'likes/create'

  #pages
  root 'projects#index'
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

  # likes routes
  resources :likes, only: [:create, :destroy]

end

#       Prefix Verb   URI Pattern                      Controller#Action
# likes_create GET    /likes/create(.:format)          likes#create
#         root GET    /                                projects#index
#        about GET    /about(.:format)                 pages#show
#       signup GET    /signup(.:format)                users#new
#    show_user GET    /canopy-:username(.:format)      users#show
#    edit_user GET    /canopy-:username/edit(.:format) users#edit
#        users GET    /users(.:format)                 users#index
#              POST   /users(.:format)                 users#create
#         user PATCH  /users/:id(.:format)             users#update
#              PUT    /users/:id(.:format)             users#update
#              DELETE /users/:id(.:format)             users#destroy
#        login GET    /login(.:format)                 sessions#new
#     sessions POST   /sessions(.:format)              sessions#create
#       logout GET    /logout(.:format)                sessions#destroy
#     projects GET    /projects(.:format)              projects#index
#              POST   /projects(.:format)              projects#create
#  new_project GET    /projects/new(.:format)          projects#new
# edit_project GET    /projects/:id/edit(.:format)     projects#edit
#      project GET    /projects/:id(.:format)          projects#show
#              PATCH  /projects/:id(.:format)          projects#update
#              PUT    /projects/:id(.:format)          projects#update
#              DELETE /projects/:id(.:format)          projects#destroy
#        likes POST   /likes(.:format)                 likes#create
#         like DELETE /likes/:id(.:format)             likes#destroy

