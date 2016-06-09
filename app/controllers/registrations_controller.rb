class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :bio, :graffiti_image, language_ids:[], learning_ids:[])
    end

    def account_update_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :bio, :graffiti_image, :current_password, language_ids:[], learning_ids:[])
    end

end
