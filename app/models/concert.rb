class Concert < ApplicationRecord
  has_many :bands

  def number_of_bands
    self.bands.count
  end
end