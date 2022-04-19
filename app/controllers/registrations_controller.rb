class RegistrationsController < ApplicationController
    def new
        @user = User.new #instance variable
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else 
            render :new
        end
    end

    private

    def user_params
        # user is only allowed to set what is permitted (especially useful when there are admin permissions)
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end