class RegistrationsController < ApplicationController
    def new
        @user = User.new #instance variable
    end
end