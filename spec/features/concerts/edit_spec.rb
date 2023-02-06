require 'rails_helper'

RSpec.describe 'New Concert' do

  before do
    @concert_1 = Concert.create(name: "Test Concert", capacity: 400, sold_out: false )
  end 

  describe 'Get edit_concert ' do
    it ' can update a concert' do

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