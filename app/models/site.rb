class Site < ActiveRecord::Base
  belongs_to :user
  has_many :site_pictures
  has_many :stays
  has_many :users, through: :stays

  validates :title, presence: true
  validates :daily_price, presence: true

  geocoded_by :address, :latitude  => :lat, :longitude => :lng # ActiveRecord
end
