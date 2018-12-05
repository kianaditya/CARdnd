class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        redirect_to user_path(current_user)
    end

    private
    def user_params
        params.require(current_user).permit(:firstname, :lastname, :drivingage, :age, :about, :phone, :address)
    end
end
