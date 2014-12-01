Rails.application.routes.draw do
#   CONTROLLERS

# me
#   DEVISE#signup                 --> 'signup'
#   DEVISE#signin                 --> 'signin'
#   #edit [+update, TYPE: POST]   --> 'me/edit'
#   #dashboard                    --> 'me/dashboard'
#   #traveller_index              --> 'me/bookings'
#   #owner_index                  --> 'me/requests'

# stays
post 'stay/create', to 'stay#create', as: :create_stay
post 'stay/update_status', to 'stay#update_status', as: :update_stay_status

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

# sites
#   #new [+create, TYPE: POST]    --> 'site/new'
#   #show [+delete, TYPE: DELETE] --> 'site/:id'
#   #edit [+update, TYPE: POST]   --> 'site/:id/edit'
#   #search [TYPE: GET]           --> 'search?params'
end
