require "rails_helper.rb"

RSpec.describe Band do
  it {should belong_to :concert}
end