class LogInController < ApplicationController
    skip_before_action :require_login, :only => [:create, :new]
    
    def new
    end 

    def create

        @user = User.find_by(username:params[:log_in][:username])
        if @user && @user.authenticate(params[:log_in][:password])
            log_in_user(@user.id)
            redirect_to user_path(@user)
        else
            redirect_to new_log_in_path, notice: "User not found"
        end 
    end 
end

def index 

end

#do I need to move my user view work to log_in?
#or why does it redirect me back to new_log_in_path