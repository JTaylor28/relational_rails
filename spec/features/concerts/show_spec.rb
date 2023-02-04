require 'rails_helper'


RSpec.describe 'concert show page' do 
  it 'displays concert name' do
    concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
    concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
    
    visit "concerts/#{concert.id}"
    expect(page).to have_content(concert.name)
    expect(page).to have_content(concert.capacity)
    expect(page).to have_content(concert.sold_out)
    visit "concerts/#{concert2.id}"
    expect(page).to have_content(concert2.name)
    expect(page).to have_content(concert2.capacity)
    expect(page).to have_content(concert2.sold_out)

  end
end