class UsersController < ApplicationController

    skip_before_action :veryify_auth, only: :create

    def index 
        @users = User.all 
        render json: @users
    end

    def create 
        @user = User.create(
            first_name: params[:first_name], 
            last_name: params[:last_name],
            username: params[:username],
            password: params[:password]
            )
        render json: @user
    end
end
