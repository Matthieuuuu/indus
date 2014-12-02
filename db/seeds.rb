# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["nuke","abandoned factory","running factory","carrier"]


Site.create(
  title: "tchernobyl",
  description: "The Chernobyl disaster was the worst nuclear power plant accident in history in terms of cost and casualties,[1] and is one of only two classified as a level 7 event (the maximum classification) on the International Nuclear Event Scale (the other being the Fukushima Daiichi nuclear disaster in 2011).[2] The battle to contain the contamination and avert a greater catastrophe ultimately involved over 500,000 workers and cost an estimated 18 billion rubles (18 billion $USD) .[3][4] During the accident itself, 31 people died, and long-term effects such as cancers and deformities are still being accounted for.",
  daily_price: 40,
  category: "nuke",
  available: true,
  lat: 51.389722,
  lng: 30.099167,
  city: "Tchernobyl",
  url:"http://www.lovethesepics.com/2013/03/chernobyl-exclusion-zone-adrenaline-radiation-urbex-a-good-day-to-die-hard/"
  )


Site.create(
  title: "Harbor terminal building",
  description: "Accompanying the loss of industry was the loss for the need of shipping and receiving. Along the once busy Detroit Harbor sits this abandoned warehouse. It's a massive 10 story building with a dozen large freight elevators, provisions for refrigerated storage, etc. Once a key point of international trade, the Harbor Terminal Building now sits empty and decaying.",
  daily_price: 20,
  category: "abandoned factory",
  available: true,
  lat: 42.3082963,
  lng: -83.0881437,
  city: "Detroit",
  url: "http://zfein.com/photography/detroit/harbor_terminal/"
  )

Site.create(
  title: "Packard motor plant",
  description: "Packard made cars in Detroit until 1957, when this plant closed. The building itself was designed by famous architect Albert Kahn, and is one of the very first massive factories built out of reinforced concrete (a style that became the norm soon after). The complex (over 15 massive factory buildings) was built in 1909 and is one of the most dilapidated, decaying buildings in Detroit. Scrappers have ravaged the buildings, going so far as removing rebar and causing collapse. The Packard Plant has also become a hotspot for arsonists, debris in the building is set on fire on nearly a weekly basis."
  daily_price: 60,
  category: "abandoned factory",
  available: true,
  lat: 42.379617,
  lng: -83.028928,
  city: "Detroit",
  url:"http://zfein.com/photography/detroit/packard/index.html"
  )

