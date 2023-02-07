class Band < ApplicationRecord
  belongs_to :concert


  def self.headliners_only
    self.where(headliner: true)
  end
  
end