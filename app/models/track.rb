class Track < ActiveRecord::Base
  has_attached_file :song
  
  belongs_to :album
end
