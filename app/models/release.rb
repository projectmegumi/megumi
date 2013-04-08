class Release < ActiveRecord::Base
  belongs_to :group
  belongs_to :show
  has_many :screenshots
end
