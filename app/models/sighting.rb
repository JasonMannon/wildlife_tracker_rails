class Sighting < ActiveRecord::Base
  belongs_to :species
  belongs_to :region
  validates :location, :presence => true
  validates :date, :presence => true
  validates :time, :presence => true
end
