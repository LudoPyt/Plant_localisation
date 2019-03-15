class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :date_of_birth, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :date_of_birth, :gender, :password, :password_confirmation, :current_password])
  end

  def require_admin
      unless current_user.admin?
        redirect_to user_session_path
      end
    end

    def require_approved
      unless current_user.approved?
        redirect_to user_session_path
      end
    end

end
