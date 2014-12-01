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
post 'stays/create', to: 'stays#create', as: :create_stay
post 'stays/cancel_booking', to: 'stays#cancel_booking', as: :cancel_stay
post 'stays/accept_booking', to: 'stays#accept_booking', as: :accept_stay
post 'stays/decline_booking', to: 'stays#decline_booking', as: :decline_stay

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

# sites
#   #new [+create, TYPE: POST]    --> 'site/new'
#   #show [+delete, TYPE: DELETE] --> 'site/:id'
#   #edit [+update, TYPE: POST]   --> 'site/:id/edit'
#   #search [TYPE: GET]           --> 'search?params'
end
