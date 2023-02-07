require 'rails_helper'

RSpec.describe " bands index page" do
  
  before do 
    @concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
    @band_1 = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: @concert_1.id )
    @band_2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: @concert_1.id )
  end
  
  describe " As a user" do
    describe " When i visit bands index" do
      it "shows a list of bands and their attributes" do
        visit "/bands"
        expect(page).to have_content(@band_1.band_name)
        expect(page).to have_content(@band_1.headliner)
        expect(page).to have_content(@band_1.members)
        expect(page).to have_content(@band_1.concert_id)
        expect(page).to have_content(@band_2.band_name)
        expect(page).to have_content(@band_2.headliner)
        expect(page).to have_content(@band_2.members)
        expect(page).to have_content(@band_2.concert_id)
      
      end

      it "has a link back to this page on every page" do
        visit "/bands"
        click_on "All Bands"
    
        expect(current_path).to eq("/bands")
      end
    end
  end
end