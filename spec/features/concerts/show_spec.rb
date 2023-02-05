require 'rails_helper'


RSpec.describe 'concert show page' do 
  it 'displays concert name and attributes' do
    concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
    concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
    
    visit "concerts/#{concert.id}"
    expect(page).to have_content(concert.name)
    expect(page).to have_content(concert.capacity)
    expect(page).to have_content(concert.sold_out)
    expect(page).to have_content(concert.number_of_bands)
    visit "concerts/#{concert2.id}"
    expect(page).to have_content(concert2.name)
    expect(page).to have_content(concert2.capacity)
    expect(page).to have_content(concert2.sold_out)
    expect(page).to have_content(concert2.number_of_bands)

  end
end