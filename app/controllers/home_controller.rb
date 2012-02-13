class HomeController < ApplicationController
  def show
  	@users = User.all
  	@track_count = Track.all.count
  	@album_count = Album.all.count
  end

end
