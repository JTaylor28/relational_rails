require 'rails_helper'

RSpec.describe 'Update Band' do

  before do
    @concert_1 = Concert.create!(name: "Test Concert", capacity: 400, sold_out: false )
    @band_1 = Band.create!(band_name: "Chon", headliner: false, members: 5, concert_id: @concert_1.id )
  end 
  
  describe "As a user" do
    describe 'When I visit the update bands page by clicking Update Band ' do
      it ' I see a form with fillalbe band fields, a button that will patch the changes, and redirect me back to the show page ' do

        visit "/bands/#{@band_1.id}/edit"

        fill_in "Band Name", with: "test band"
        fill_in "headliner", with: "true"
        fill_in "members", with: "6"
        click_button 'Update'

        expect(current_path).to eq("/bands/#{@band_1.id}")
        expect(page).to have_content("test band")
        expect(page).to have_content("true")
        expect(page).to have_content("6")

      end
    end
  end 
end