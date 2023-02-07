require "rails_helper.rb"

RSpec.describe Band do
  it {should belong_to :concert}

  describe "Class Methods" do
    describe "::headliners_only" do
      it "only shows a band if its a headliner" do 
        concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
        band_1 = Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: concert_1.id )
        band_2 = Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: concert_1.id )
        band_3 = Band.create(band_name: "Ichikoro", headliner: false, members: 4, concert_id: concert_1.id )
        expect(Band.headliners_only).to eq([band_2])
      end
    end
  end
end