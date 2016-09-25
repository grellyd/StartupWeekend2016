class UsersController < ApplicationController
  def create
      @user = User.new(user_params)
      if @user.save!
          render json: @user
      else
          render nothing: true, status: :bad_request
      end
  end

  def show
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
  end

  private
    def user_params
        params.require(:user).permit(:fName, :lName, :credits, :rating, :onBoarding, :verifiedDriver, :field, :gender, :profilePic, :description, :trips, :home_location, :work_location)
    end
end
