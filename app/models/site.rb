class Site < ActiveRecord::Base
  belongs_to :user
  has_many :stays
  has_many :users, through: :stays

  validates :title, presence: true
  validates :daily_price, presence: true
end
