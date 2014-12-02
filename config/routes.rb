Rails.application.routes.draw do
  devise_for :users
#   CONTROLLERS

# sites
resources :sites, only: [:new, :create, :show, :update, :edit]
get 'search', to: 'sites#search'



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
post 'stays/cancel_booking', to: 'stays#cancel_booking', as: :cancel_stay
post 'stays/accept_booking', to: 'stays#accept_booking', as: :accept_stay
post 'stays/decline_booking', to: 'stays#decline_booking', as: :decline_stay

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

# sites
#   #new                          --> 'site/new'
#   #create                       --> 'site/create' (post)
#   #show                         --> 'site/:id'
#   #edit & #update               --> 'site/:id/edit' (post)
#   #search                       --> 'search?params'
end
