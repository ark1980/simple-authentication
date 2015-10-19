class UsersController < ApplicationController

    def new
        @users = User.new
    end
    
    def create
        @user = User.new(params[:user])
        if @user.save
            flash.notice = "You signed up successfully"
            redirect_to "/"
        else
            flash.error = "Form is invalid"
            render :new
        end
    end
end