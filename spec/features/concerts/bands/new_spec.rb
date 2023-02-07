require "rails_helper"

RSpec.describe "new concert band" do

  before do 
    @concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
    @band_1 = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: @concert_1.id )
    @band_2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: @concert_1.id )
  end

  describe "As a user" do 
    describe "when I visit the concert band index page" do
      it " I see a link to add a new concert for that band" do 
        visit "/concerts/#{@concert_1.id}/bands"

        click_link "Create Band"

        expect(current_path).to eq("/concerts/#{@concert_1.id}/bands/new")
      end

      it "when I submit the form I see a new band on the concert band index page" do
        visit "/concerts/#{@concert_1.id}/bands/new"

        fill_in 'band_name', with: "Chon"
        fill_in 'headliner', with: "false"
        fill_in 'members', with: "5"

        click_button "Create Band"

        expect(current_path).to eq("/concerts/#{@concert_1.id}/bands")
        expect(page).to have_content("Chon")
        expect(page).to have_content("false")
        expect(page).to have_content("5")
      end
    end
  end
end