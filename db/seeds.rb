# @categories = ["nuke","abandoned factory","running factory","carrier"]
require 'faker'


CATEGORIES = ['Nuclear winter', 'Abandonned sanatorium',
  'Bunker','Abandoned factory']


# 10.times do
#   name = Faker::Name.name
#   email = Faker::Internet.email
#   User.create!(name: name, email: email, password: '12345678')
# end


  p admin = User.create!(name: "admin", email: "user0@mail.com", password: 'password')
  p user1 = User.create!(name: "user1", email: "user1@mail.com", password: 'password')
  p user2 = User.create!(name: "user2", email: "user2@mail.com", password: 'password')
  p  user3 = User.create!(name: "user3", email: "user3@mail.com", password: 'password')
  p  user4 = User.create!(name: "user4", email: "user4@mail.com", password: 'password')
  p user5 = User.create!(name: "user5", email: "user5@mail.com", password: 'password')



Site.create(
  title: "The lost city of Vogelsang and its nuclear secrets",
  description: "The Russians withdrew the weapons in a hurry after just a few months, in August, likely for political reasons with Nikita Khrushchev visiting American counterpart Dwight Eisenhower in September. However, another sneaky deployment – this time with R-12 (SS-4 Sandal) nuclear missiles capable of reaching 2,000 kilometers – was supposed to have been sent here in 1961-62 during the top secret ‘Operatsiya Tuman.’ It was so damned secret not even the soldiers knew where they were being deployed.",
  daily_price: 15,
  category: "Nuclear winter",
  available: true,
  lat: 52.5243700,
  lng: 13.4105300,
  user: user1,
  city: "Berlin",
  url:"http://www.abandonedberlin.com/2014/11/vogelsang-soviet-military-camp-nuclear-missiles.html",
  picture_url: "http://4.bp.blogspot.com/-FXJ8BE0Kzuk/VHJ3mdTAcHI/AAAAAAACu-A/IZnqJ_EBLPA/s1600/Vogelsang%2BSoviet%2BMilitary%2BNuclear%2BBase%2BAbandoned%2BBerlin-1200711.jpg"
  )

Site.create(
  title: "Haunted by history: The ghosts of Beelitz-Heilstätten",
  description: "Beelitz-Heilstätten, former TB clinic and sanatorium turned military hospital during the first and second world wars, and kept on as same afterwards by the victorious Russians. Hitler and Honecker were its most famous patients but there were plenty of others too.",
  daily_price: 40,
  category: "Abandonned sanatorium",
  available: true,
  lat: 52.5243700,
  lng: 13.4105300,
  city: "Berlin",
  user: user2,
  url:"http://www.abandonedberlin.com/2014/08/beelitz-heilstaetten-abandoned-sanatorium-hospital-berlin.html",
  picture_url: "http://3.bp.blogspot.com/-m4GH4k1zED0/U_JQmTjJRuI/AAAAAAACtOw/FT1uhjbZKTs/s1600/Beelitz-Heilsta%CC%88tten%2BIII%2BAbandoned%2BBerlin-7941.jpg"
  )

Site.create(
  title: "Anatomy institute: Abgehakt",
  description: "You expect decaying corpses, chopped up bodies, putrid specimens of flesh, the remains of fevered experiments, but all the evidence is gone, surgically removed. Even the flies have left. Or so it seems… Some clues remain, hinting at a questionable past. Tiled rooms, laboratories, dissecting tables, display cases, strange contraptions, eerie auditoriums, projector rooms, hurriedly scribbled notes, telephones for contact with the outside world, sinks, desks, chairs, cabinets, files, a toilet brush, former lab rats. Put them together and there can be no mistake – this place was once dedicated to the gruesome field of anatomy. Downstairs would send a chill down your back, as indeed the cold steel scalpels must have done to their victims. This is where the corpses were stored, kept fresh in stainless steel fridges stacked like pigeonholes.",
  daily_price: 28,
  category: "Abandonned sanatorium",
  available: true,
  lat: 52.5243700,
  lng: 13.4105300,
  city: "Berlin",
  user: user1,
  url:"http://www.abandonedberlin.com/2014/04/anatomy-institute-abandoned-college.html",
  picture_url: "http://1.bp.blogspot.com/-WyEoFB6kK7M/U2k-4Q9sNZI/AAAAAAACr8I/ZFRw_ITbsEU/s1600/Anatomy+Institute+College+dissecting+tables+fridges+Abandoned+Berlin-5956.jpg"
  )

Site.create(
  title: "Buried in a bunker: Last traces of the Luna-Lager labor camp",
  description: "Wartime bunker, all that’s left of the former Luna-Lager labor camp at Schönholzer Heide, now a grassy, half-wild and quite pleasant 35-hectare park.",
  daily_price: 40,
  category: "Bunker",
  available: true,
  lat: 52.5243700,
  lng: 13.4105300,
  user: user1,
  city: "Berlin",
  url:"http://www.abandonedberlin.com/2014/05/luna-lager-bunker-nazi-labor-camp-berlin.html",
  picture_url: "http://2.bp.blogspot.com/-0U2vWt-q7LI/U2KxagxT0aI/AAAAAAACr6Q/iX7Vao0LMYY/s1600/Bunker+Luna-Lager+Nazi+Labour+Camp+Abandoned+Berlin-3403.jpg"
  )

Site.create(
  title: "Frozen out Eisfabrik: The abandoned ice factory",
  description: "Berliner Eisfabrik. Abandoned ice factory, one of Germany’s oldest, which managed to survive two world wars, several fires and countless parties but is about to meet its fate at the hands of developers despite being a protected building. There's a nice view of the river and my beloved Fernsehturm from the roof, and it’s also home to some fine street art.",
  daily_price: 40,
  category: "Abandoned factory",
  available: true,
  lat: 52.5243700,
  lng: 13.4105300,
  user: user3,
  city: "Berlin",
  url:"http://www.abandonedberlin.com/2011/11/frozen-out-abandoned-ice-factory.html",
  picture_url: "http://3.bp.blogspot.com/-irJ9smu77ak/UxpdIK6peEI/AAAAAAACrNo/Sc1Z89-HMyo/s1600/Eisfabrik+Abandoned+Ice+Factory+Berlin-9002.jpg"
  )

Site.create(
  title: "Tchernobyl",
  description: "The Chernobyl disaster was the worst nuclear power plant accident in history in terms of cost and casualties, and is one of only two classified as a level 7 event (the maximum classification) on the International Nuclear Event Scale (the other being the Fukushima Daiichi nuclear disaster in 2011). The battle to contain the contamination and avert a greater catastrophe ultimately involved over 500,000 workers and cost an estimated 18 billion rubles (18 billion $USD). During the accident itself, 31 people died, and long-term effects such as cancers and deformities are still being accounted for.",
  daily_price: 40,
  category: "Nuclear winter",
  available: true,
  lat: 51.389722,
  lng: 30.099167,
  user: user3,
  city: "Tchernobyl",
  url:"http://www.lovethesepics.com/2013/03/chernobyl-exclusion-zone-adrenaline-radiation-urbex-a-good-day-to-die-hard/",
  picture_url: "http://www.lovethesepics.com/wp-content/uploads/2013/03/Chernobyl-Monument-and-Reactor-April-2012.jpg"
  )


Site.create(
  title: "Harbor terminal building",
  description: "Accompanying the loss of industry was the loss for the need of shipping and receiving. Along the once busy Detroit Harbor sits this abandoned warehouse. It's a massive 10 story building with a dozen large freight elevators, provisions for refrigerated storage, etc. Once a key point of international trade, the Harbor Terminal Building now sits empty and decaying.",
  daily_price: 20,
  category: "Abandoned factory",
  available: true,
  user: user2,
  lat: 42.3082963,
  lng: -83.0881437,
  city: "Detroit",
  url: "http://zfein.com/photography/detroit/harbor_terminal/",
  picture_url:"http://zfein.com/photography/detroit/harbor_terminal/images/IMG_5105_A.jpg"
  )

Site.create(
  title: "Packard motor plant",
  description: "Packard made cars in Detroit until 1957, when this plant closed. The building itself was designed by famous architect Albert Kahn, and is one of the very first massive factories built out of reinforced concrete (a style that became the norm soon after). The complex (over 15 massive factory buildings) was built in 1909 and is one of the most dilapidated, decaying buildings in Detroit. Scrappers have ravaged the buildings, going so far as removing rebar and causing collapse. The Packard Plant has also become a hotspot for arsonists, debris in the building is set on fire on nearly a weekly basis.",
  daily_price: 60,
  category: "Abandoned factory",
  available: true,
  lat: 42.379617,
  lng: -83.028928,
  user: user5,
  city: "Detroit",
  url:"http://zfein.com/photography/detroit/packard/index.html",
  picture_url:"http://zfein.com/photography/detroit/packard/images/IMG_5018_A.jpg"
  )