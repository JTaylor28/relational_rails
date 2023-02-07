require 'rails_helper'

RSpec.describe 'Update Concert' do

  before do
    @concert_1 = Concert.create(name: "Test Concert", capacity: 400, sold_out: false )
  end 
  
  describe "As a user" do
    describe 'When I visit the update concerts page by clicking Update Concert ' do
      it ' I see a form with fillalbe concert fields, a button that will patch the changes, and redirect me back to the show page ' do

        visit "/concerts/#{@concert_1.id}"

        click_link 'Update Concert'

        expect(current_path).to eq("/concerts/#{@concert_1.id}/edit")

        fill_in 'Name', with: 'Test Concert'
        fill_in 'Capacity', with: "400"
        fill_in 'sold_out', with: "false"
        click_on 'Update'

        expect(current_path).to eq("/concerts/#{@concert_1.id}")
        expect(page).to have_content('Test Concert')
      end
    end
  end 
end