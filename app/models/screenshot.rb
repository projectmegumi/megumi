class Screenshot < ActiveRecord::Base
  belongs_to :release

  has_attached_file :image,
    path: Rails.application.paperclip_path,
    url: Rails.application.paperclip_url,
    styles: { original: 'png', small: ['640x360', :png], small_2x: ['1280x720', :png], thumb: ['427x240', :png] }
end
