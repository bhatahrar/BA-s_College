class UsersController < ApplicationController
    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        @user.role = "student" 
    
        if @user.save
          session[:user_id] = @user.id   
          redirect_to applications_path, notice: "Signed up successfully!"
        else
          render :new
        end
      end
      private
      def user_params
        params.require(:user).permit(:name,:email, :password)
      end
end