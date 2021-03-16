class Business < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :website, presence: true 
  validates :us_state, presence: true
end
