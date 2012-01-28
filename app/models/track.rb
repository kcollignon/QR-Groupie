class Track < ActiveRecord::Base

belongs_to :album

has_attached_file :song,
       :storage => :s3,
       :s3_credentials => "#{Rails.root}/config/s3.yml",
       :path => "/:style/:id/:filename",
       :bucket => "qr_songs"

end
