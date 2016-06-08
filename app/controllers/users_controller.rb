class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
    end

  # params.require(:user).permit(:language, )

end
