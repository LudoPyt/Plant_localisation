class UsersController < ApplicationController
    def index
        @users = User.where(approved: false)
    end

    def approve 
        unless current_user.admin?
            redirect_to root_path 
        end

        @user = User.find(params[:id])
        @user.approved = true
        @user.save
        redirect_to users_path, notice: 'Cet utilisateur a bien été approuvé'
    end
end