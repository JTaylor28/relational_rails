require "rails_helper.rb"

RSpec.describe Concert do
  it {should have_many :bands}
end