require 'rails_helper'


RSpec.describe 'concert show page' do 

  before(:each) do
    @concert = Concert.create!(name: "RiotFest", capacity: 500, sold_out: false)
    @concert2 = Concert.create!(name: "RockVill 2023", capacity: 900, sold_out: true)
  end
  
  describe "as a visitor" do 
    describe " when I visit concerts show page" do
  
      it ' I see all concert names and attributes' do
        
        visit "concerts/#{@concert.id}"
        expect(page).to have_content(@concert.name)
        expect(page).to have_content(@concert.capacity)
        expect(page).to have_content(@concert.sold_out)
        expect(page).to have_content(@concert.number_of_bands)
        visit "concerts/#{@concert2.id}"
        expect(page).to have_content(@concert2.name)
        expect(page).to have_content(@concert2.capacity)
        expect(page).to have_content(@concert2.sold_out)
        expect(page).to have_content(@concert2.number_of_bands)

      end

      it " I see a link to the concerts bands" do
        visit "/concerts/#{@concert.id}"
        click_on "#{@concert.name} line-up!"

        expect(current_path).to eq("/concerts/#{@concert.id}/bands")
      end

      it " I see a link to update the concert that will take me to the concert update from" do 
        visit "/concerts/#{@concert.id}"
        click_on "Update Concert"

        expect(current_path).to eq("/concerts/#{@concert.id}/edit")
      end
    end 
  end 
end