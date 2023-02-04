# require 'rails_helper'


# RSpec.describe 'concert show page' do 
#   it 'displays band name' do
#     concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
#     concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
#     band = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: concert.id )
#     band2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concerts_id: concert.id )
#     band3 = Band.create(band_name: "Ichikoro", headliner: false, members: 4, concerts_id: concert2.id )
#     band4 = Band.create(band_name: "Covet", headliner: true, members: 2, concerts_id: concert2.id )

    
#     visit "bands/#{band.id}"
#     # expect(page).to have_content(band.band_name)
#     # expect(page).to have_content(band.headlinder)
#     # expect(page).to have_content(concert.members)
#     visit "bands/#{band.id}"
#     # expect(page).to have_content(band.band_name)
#     # expect(page).to have_content(band.headlinder)
#     # expect(page).to have_content(concert.members)

#   end
# end