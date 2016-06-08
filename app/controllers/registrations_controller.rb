class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, language_ids:[], learning_ids:[])
    end

    def account_update_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, language_ids:[], learning_ids:[])
    end

end
