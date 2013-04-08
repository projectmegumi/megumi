# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

s = Show.create! name: 'Ore no Imouto ga Konnani Kawaii Wake ga Nai.',
  cover_image: open('http://www.oreimo-anime.com/images/top/img_kv.png')

as = Group.create! name: 'AsukaSubs', abbriviation: 'AsukaSubs'
cpp = Group.create! name: 'C++', abbriviation: 'CPP'
c = Group.create! name: 'Commie', abbriviation: 'Commie'
et = Group.create! name: 'EveTaku', abbriviation: 'EveTaku'
hs = Group.create! name: 'HorribleSubs', abbriviation: 'HS'

asr = as.releases.create! show: s, file_name: "[AsukaSubs] Ore no Imoto ga Konna ni Kawaii Wake ga Nai S2 - 01 (1280x720 h264 AAC)[3DDE0217].mkv", file_size: 143036644
cppr = cpp.releases.create! show: s, file_name: "[C++] Ore no Imouto ga Konna ni Kawaii Wake ga Nai. - 01 [53CCBA8B].mkv", file_size: 339832802
cr = c.releases.create! show: s, file_name: "[Commie] Ore no Imouto ga Konnani Kawaii Wake ga Nai. - My Little Sister Can't Be This Cute. - 01 [6270E791].mkv", file_size: 243805398
etr = et.releases.create! show: s, file_name: "[EveTaku] Ore no Imouto ga Konnani Kawaii Wake ga Nai 2 - 01 (1280x720 x264-Hi10P AAC)[BD220B11].mkv", file_size: 241215326
hsr = hs.releases.create! show: s, file_name: "[HorribleSubs] Oreimo S2 - 01 [720p].mkv", file_size: 339744470
