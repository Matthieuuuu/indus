Rails.application.routes.draw do
  devise_for :users
#   CONTROLLERS

# sites
resources :sites, only: [:new, :create, :show, :update, :edit]
get 'search', to: 'sites#search'
get '/', to: 'sites#index', as: :landing


resources :users, only: [:show,:edit, :update]

#  root to: 'pages#landing'


# me
#   DEVISE#signup                 --> 'signup'
#   DEVISE#signin                 --> 'signin'
#   #edit [+update, TYPE: POST]   --> 'me/edit'
#   #dashboard                    --> 'me/dashboard'
#   #traveller_index              --> 'me/bookings'
#   #owner_index                  --> 'me/requests'

# stays
post 'stays/create', to: 'stays#create', as: :create_stay
resources :stays, only: [:index, :create, :update]

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

get '/about', to: 'pages#about', as: :about


# sites
#   #new                          --> 'site/new'
#   #create                       --> 'site/create' (post)
#   #show                         --> 'site/:id'
#   #edit & #update               --> 'site/:id/edit' (post)
#   #search                       --> 'search?params'
end
