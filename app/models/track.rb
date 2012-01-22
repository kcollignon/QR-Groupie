class Track < ActiveRecord::Base
  has_attached_file :song,
       :storage => :s3,
       :s3_credentials => "#{Rails.root}/config/s3.yml",
       :path => "/:style/:id/:filename",
       :bucket => "qr_songs"
  
  belongs_to :album
end
