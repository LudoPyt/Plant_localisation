class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def approve 
        unless current_user.admin?
            redirect_to root_path, notice: 'Vous devez être approuvé par un administrateur'
        end

        @user = User.find(params[:id])
        @user.approved = true
        @user.save
        redirect_to users_path, notice: 'Cet utilisateur a bien été approuvé'
    end
end