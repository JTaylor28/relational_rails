require "rails_helper.rb"

RSpec.describe Concert do
  it {should have_many :bands}

  describe " instance methods" do
    before(:each) do
      @riot_fest = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
      @band_1 = @riot_fest.bands.create!(band_name: "Chon", headliner: false, members: 5, concert_id: @riot_fest.id )
      @band_2 = @riot_fest.bands.create!(band_name: "polyphia", headliner: true, members: 4, concert_id: @riot_fest.id)
    end

    describe "#number_of_bands" do
      it " shows the number of bands " do
        expect(@riot_fest.number_of_bands).to eq(2)
      end
    end
  end
end