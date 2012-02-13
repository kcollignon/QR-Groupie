class UsersController < ApplicationController

	def index
		@users = User.all

		respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
	end

	def show
		@user = User.find_by_username(params[:id]) || User.find(params[:id])

		respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @track }

    end
	end

	def edit
    	@user = User.find(params[:id])
  	end

  	def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:id])
        format.html { redirect_to @user, :notice => 'Users was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
      if params[:user][:password].blank?
  params[:user].delete(:password)
  params[:user].delete(:password_confirmation)
end
    end
  end

end
