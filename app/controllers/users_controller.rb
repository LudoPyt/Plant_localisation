class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, only: [:index]



    def index
        @users = User.all
    end

    def show

    end

    # GET /users/1/edit
    def edit

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
