class Album < ActiveRecord::Base
  has_many :tracks
  has_attached_file :artwork,
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => ":attachment/:id/:style/:basename.:extension",
  :bucket => 'qr_albums'
end
