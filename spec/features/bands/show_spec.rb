require 'rails_helper'


RSpec.describe 'bands show page' do 

  before do
    @concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
    @concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
    @band = Band.create!(band_name: "Chon", headliner: false, members: 5, concert_id: @concert.id )
    @band2 = Band.create!(band_name: "polyphia", headliner: true, members: 4, concert_id: @concert2.id )
  end

  describe " as a user " do 
    describe "when I visit a bands show page" do 
      it ' I see the band and its attributes' do
        visit "bands/#{@band.id}"
        expect(page).to have_content(@band.band_name)
        expect(page).to have_content(@band.headliner)
        expect(page).to have_content(@band.members)
        expect(page).to have_content(@band.concert_id)
        expect(page).to_not have_content(@band2.band_name)

        visit "bands/#{@band2.id}"
        expect(page).to have_content(@band2.band_name)
        expect(page).to have_content(@band2.headliner)
        expect(page).to have_content(@band2.members)
        expect(page).to have_content(@band2.concert_id)
        expect(page).to_not have_content(@band.band_name)
        
      end

      it ' I see a link to update that band' do
        visit "bands/#{@band.id}"

        click_link "Update Band"

        expect(current_path).to eq("/bands/#{@band.id}/edit")
      end
    end 
  end
end