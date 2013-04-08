class Release < ActiveRecord::Base
  belongs_to :group_id
  belongs_to :show_id
  has_many :screenshots
end
