class Review < ActiveRecord::Base
  belongs_to :stay
  validates_presence_of :rating
end
