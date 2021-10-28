# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'uri'

ac_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/244210/header.jpg?t=1634026387'

ac_filename = File.basename(URI.parse(ac_url).path)
ac_file = URI.open(ac_url)

assetto_corsa = Game.create(title: 'Assetto Corsa', genre: 'Corrida', platform: 'Windows', release: '2014-12-19')
assetto_corsa.photo.attach(io: ac_file, filename: ac_filename)

adofai_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/977950/header.jpg?t=1618571569'

adofai_filename = File.basename(URI.parse(adofai_url).path)
adofai_file = URI.open(adofai_url)

a_dance_of_fire_and_ice = Game.create(title: 'A Dance of Fire and Ice', genre: 'Ritmo', platform: 'Windows e Mac', release: '2019-01-24')
a_dance_of_fire_and_ice.photo.attach(io: adofai_file, filename: adofai_filename)

ddlc_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/698780/header.jpg?t=1586800322'

ddlc_filename = File.basename(URI.parse(ddlc_url).path)
ddlc_file = URI.open(ddlc_url)

doki_doki_literature_club = Game.create(title: 'Doki Doki Literature Club!', genre: 'Romance Visual', platform: 'Windows e Mac', release: '2017-09-22')
doki_doki_literature_club.photo.attach(io: ddlc_file, filename: ddlc_filename)

fnaf_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/319510/header.jpg?t=1579635996'

fnaf_filename = File.basename(URI.parse(fnaf_url).path)
fnaf_file = URI.open(fnaf_url)

five_nights_at_freddys = Game.create(title: "Five Nights at Freddy's", genre: 'Terror', platform: 'Windows', release: '2014-08-18')
five_nights_at_freddys.photo.attach(io: fnaf_file, filename: fnaf_filename)

gd_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/322170/header.jpg?t=1624472273'

gd_filename = File.basename(URI.parse(gd_url).path)
gd_file = URI.open(gd_url)

geometry_dash = Game.create(title: 'Geometry Dash', genre: 'Música', platform: 'Windows e Mac', release: '2014-12-22')
geometry_dash.photo.attach(io: gd_file, filename: gd_filename)

h_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/1289310/header.jpg?t=1620755466'

h_filename = File.basename(URI.parse(h_url).path)
h_file = URI.open(h_url)

helltaker = Game.create(title: 'Helltaker', genre: 'Quebra-Cabeça', platform: 'Windows, Mac e SteamOS', release: '2020-05-11')
helltaker.photo.attach(io: h_file, filename: h_filename)

ktane_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/341800/header_brazilian.jpg?t=1633567912'

ktane_filename = File.basename(URI.parse(ktane_url).path)
ktane_file = URI.open(ktane_url)

keep_talking_and_nobody_explodes = Game.create(title: 'Keep Talking and Nobody Explodes', genre: 'Quebra-Cabeça', platform: 'Windows, Mac e SteamOS', release: '2015-10-08')
keep_talking_and_nobody_explodes.photo.attach(io: ktane_file, filename: ktane_filename)

pm256_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/455400/header.jpg?t=1580375468'

pm256_filename = File.basename(URI.parse(pm256_url).path)
pm256_file = URI.open(pm256_url)

pac_man_256 = Game.create(title: 'PAC-MAN 256', genre: 'Arcade', platform: 'Windows, Mac e SteamOS', release: '2016-06-21')
pac_man_256.photo.attach(io: pm256_file, filename: pm256_filename)

pie_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/246620/header.jpg?t=1611835557'

pie_filename = File.basename(URI.parse(pie_url).path)
pie_file = URI.open(pie_url)

plague_inc_evolved = Game.create(title: 'Plague Inc: Evolved', genre: 'Estratégia', platform: 'Windows, Mac e SteamOS', release: '2016-02-18')
plague_inc_evolved.photo.attach(io: pie_file, filename: pie_filename)

rf_url = 'https://cdn.cloudflare.steamstatic.com/steam/apps/339790/header.jpg?t=1478097701'

rf_filename = File.basename(URI.parse(rf_url).path)
rf_file = URI.open(rf_url)

rfactor = Game.create(title: 'rFactor', genre: 'Corrida', platform: 'Windows', release: '2005-08-31')
rfactor.photo.attach(io: rf_file, filename: rf_filename)


Category.create([{name: 'Corrida'}, {name: 'Ritmo'}, {name: 'Romance Visual'}, {name: 'Terror'}, {name: 'Música'}, {name: 'Quebra-cabeça'}, {name: 'Arcade'}, {name: 'Estratégia'}])