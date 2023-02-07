require "rails_helper"

RSpec.describe "Concert bands index" do 
  describe "As a user do" do
    before do 
      @concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
      @band_1 = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: @concert_1.id )
      @band_2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: @concert_1.id )
    end

    describe "When I visit a concerts band page by clicking line-up!" do
      it " I see all the concerts bands and their attributes" do
        
        visit "/concerts/#{@concert_1.id}/bands"

        expect(page).to have_content(@band_1.band_name)
        expect(page).to have_content(@band_1.headliner)
        expect(page).to have_content(@band_1.members)

        expect(page).to have_content(@band_2.band_name)
        expect(page).to have_content(@band_2.headliner)
        expect(page).to have_content(@band_2.members)

      end

      it " I see a link to add a new band for that concert" do 
        visit "/concerts/#{@concert_1.id}/bands"

        click_link "Create Band"

        expect(current_path).to eq("/concerts/#{@concert_1.id}/bands/new")
      end
    end
  end
end