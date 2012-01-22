class Album < ActiveRecord::Base
  has_many :tracks

  has_attached_file :artwork,
       :storage => :s3,
       :s3_credentials => "#{Rails.root}/config/s3.yml",
       :path => "/:style/:id/:filename",
       :bucket => "qr_albums"
       
end