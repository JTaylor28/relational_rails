require 'rails_helper'


RSpec.describe 'concert show page' do 
  it 'displays band and band attributes' do
    concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
    concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
    band = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: concert.id )
    band2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: concert2.id )

    visit "bands/#{band.id}"
    expect(page).to have_content(band.band_name)
    expect(page).to have_content(band.headliner)
    expect(page).to have_content(band.members)
    expect(page).to have_content(band.concert_id)
    expect(page).to_not have_content(band2.band_name)

    visit "bands/#{band2.id}"
    expect(page).to have_content(band2.band_name)
    expect(page).to have_content(band2.headliner)
    expect(page).to have_content(band2.members)
    expect(page).to have_content(band2.concert_id)
    expect(page).to_not have_content(band.band_name)
    
  end
end