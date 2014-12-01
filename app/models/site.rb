class Site < ActiveRecord::Base
  belongs_to :user
  has_many :site_pictures
  has_many :stays
  has_many :users, through: :stays

  validates :user, presence: true
end
