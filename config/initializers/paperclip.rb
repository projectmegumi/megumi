if Rails.env.in? ['development', 'test']
  class Megumi::Application
    def paperclip_path(suffix = '/:class_name/:attachment/:id.:style.:extension')
        ":rails_root/public/system#{suffix}"
    end

    def paperclip_url(suffix = '/:class_name/:attachment/:id.:style.:extension')
      "/system#{suffix}"
    end
  end
else
  Paperclip::Attachment.default_options.merge!(
    storage: :ftp,
    ftp_servers: [
      host: 'ftp.sugoisubs.com',
      user: ENV['FTP_USERNAME'],
      password: ENV['FTP_PASSWORD'],
      passive: true
    ]
  )

  class Megumi::Application
    def paperclip_path(suffix = '/:class_name/:attachment/:id.:style.:extension')
      "/:rails_env/#{suffix}"
    end

    def paperclip_url(suffix = '/:class_name/:attachment/:id.:style.:extension')
      "http://subcompare.sugoisubs.com/:rails_env#{suffix}"
    end
  end
end
