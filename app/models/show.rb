class Show < ActiveRecord::Base
  has_attached_file :cover_image,
    path: Rails.application.paperclip_path,
    url: Rails.application.paperclip_url,
    styles: { small: ['370x300#', :png], small_2x: ['740x600#', :png] }

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
