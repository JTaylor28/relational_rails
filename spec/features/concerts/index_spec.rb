require 'rails_helper'

RSpec.describe " Concert index page" do
  
  before do
    @concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
    @concert_2 = Concert.create(name: "RockVill 2023", capacity: 900, sold_out: true )
    @concert_3 = Concert.create(name: "Louder Than Life", capacity: 1100, sold_out: false )
  end

  let(:this) {"<p>#{@concert_3.name}</p>"}
  let(:that)  {"<p>#{@concert_1.name}</p>"}

  describe " As a user " do
    describe " when I visit concerts index " do
      it "shows a list of concerts" do
        visit "/concerts"
      expect(page).to have_content(@concert_1.name)
      expect(page).to have_content(@concert_2.name)
      expect(page).to have_content(@concert_3.name)
      expect(page).to have_content(@concert_1.created_at)
      expect(page).to_not have_content("somethings else")
      end

      it "shows concerts in descending order" do
        visit "/concerts"
        expect(this).to appear_before(that)
      end
      
      it "has a link back to this page on every page" do
        visit "/concerts"
        click_on "All Concerts"
    
        expect(current_path).to eq("/concerts")
      end
    end
  end
end