class Group < ActiveRecord::Base
  has_many :releases
  has_many :shows, through: :releases
end
