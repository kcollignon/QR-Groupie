class Album < ActiveRecord::Base
  has_many :tracks
  has_attached_file :artwork
end
