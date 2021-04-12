class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.all.page(params[:page]).per(10)
  end

  def following
    #@userがフォローしているユーザー
    @user  = User.find(params[:id])
    @users = @user.following
    # render 'show_follow'
  end

  def followers
    #@userをフォローしているユーザー
    @user  = User.find(params[:id])
    @users = @user.followers
    # render 'show_follower'
  end
end
