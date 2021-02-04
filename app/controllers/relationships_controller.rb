class RelationshipsController < ApplicationController

  def index
   @user = User.find(params[:user_id])
  end

  def show
   @user = User.find(params[:user_id])
  end

  def follow
  current_user.follow(params[:id])
  redirect_to request.referer
  end

  def unfollow
    current_user.unfollow(params[:id])
    redirect_to request.referer
  end

end
