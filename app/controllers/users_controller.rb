class UsersController < ApplicationController
    skip_before_action :require_login, :only => [:create, :new]
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            log_in_user(@user.id)
            redirect_to user_path(@user)
        else
            flash[:notice] = "No matching account"
            redirect_to new_user_path
        end
    end

    # def edit
    #     @user = User.find(params[:id])
    # end

    # def update
    #     @user = User.find(params[:id])
    #     @user.update(user_params)
    #     if @user.save
    #         redirect_to @user 
    #     else
    #         render :edit 
    #     end
    # end

    # def destroy
    #     @user = User.find(params[:id])
    #     @user.destroy
    #     flash[:notice] = "User has been deleted."
    #     redirect_to users_path 
    # end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end

