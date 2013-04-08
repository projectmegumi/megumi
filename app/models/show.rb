class Show < ActiveRecord::Base
  has_attached_file :cover_image,
    styles: { small: '370x300#', small_2x: '740x600#' }
end
