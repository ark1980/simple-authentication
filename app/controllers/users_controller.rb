class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash.notice = "Signed up!"
      redirect_to "/"
    else
      render :new
    end
  end
end
