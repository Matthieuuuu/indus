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
post 'stay/cancel_booking', to 'stay#cancel_booking', as: :cancel_stay
post 'stay/accept_booking', to 'stay#accept_booking', as: :accept_stay
post 'stay/decline_booking', to 'stay#decline_booking', as: :decline_stay

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

# sites
#   #new [+create, TYPE: POST]    --> 'site/new'
#   #show [+delete, TYPE: DELETE] --> 'site/:id'
#   #edit [+update, TYPE: POST]   --> 'site/:id/edit'
#   #search [TYPE: GET]           --> 'search?params'
end
