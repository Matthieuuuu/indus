class Stay < ActiveRecord::Base
  belongs_to :user
  belongs_to :site
  has_many :reviews
end
