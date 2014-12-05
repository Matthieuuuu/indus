class Site < ActiveRecord::Base
  belongs_to :user
  has_many :stays
  has_many :users, through: :stays
  has_many :taken_flat_days

  validates :title, presence: true
  validates :daily_price, presence: true

  geocoded_by :address, :latitude  => :lat, :longitude => :lng # ActiveRecord
  after_validation :geocode


  def address
    # return "#{self.street},#{self.zip_code},#{self.city},#{self.country}"
  [street, city, country].compact.join(', ')
  end

end
