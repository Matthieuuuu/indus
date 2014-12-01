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
#   #create [POST]                --> 'stay/create'
#   #update_status  TYPE: POST    --> 'stay/update'
#     [accepted, declined, cancel]

# pages
#   #landing                      --> '/'
#   #about                        -->  'about'

# sites
#   #new [+create, TYPE: POST]    --> 'site/new'
#   #show [+delete, TYPE: DELETE] --> 'site/:id'
#   #edit [+update, TYPE: POST]   --> 'site/:id/edit'
#   #search [TYPE: GET]           --> 'search?params'
end
