class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
      @message= Message.new(receiver: @user)

    end
end
