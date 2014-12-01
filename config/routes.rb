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
#   #new                          --> 'site/new'
#   #create                       --> 'site/create' (post)
#   #show                         --> 'site/:id'
#   #edit & #update               --> 'site/:id/edit' (post)
#   #search                       --> 'search?params'
end
