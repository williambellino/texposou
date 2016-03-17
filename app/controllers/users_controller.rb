class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def demands
    # @places = Place.where(user_id: @user.id)
    # @exhibitions = Exhibition.where(user_id: current_user).order('created_at DESC')
  end

  def show
    @user = User.find(params[:id])
    @places = Place.where(user_id: @user.id)
    @exhibitions = Exhibition.where(artist_id: @user.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
end
