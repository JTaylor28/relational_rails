require "rails_helper"

RSpec.describe "New Concert" do 
  describe "As a user" do
    describe " When I visit the concert form from clicking the 'Create Concert' button" do

      it " links to a new page from the concerts index page " do 
        visit "/concerts"

        click_link "Create Concert"

        expect(current_path).to eq("/concerts/new") 
      end

      it "can create a new concert" do 

        visit "/concerts/new"

        fill_in "name", with: "Test Concert"
        fill_in "capacity", with: "10"
        fill_in "sold_out", with: "true"
        click_on "Create Concert"

        expect(current_path).to eq("/concerts")
        expect(page).to have_content("Test Concert")
      end
    end
  end
end 