class UsersController < ApplicationController
	
	def index
		@users = User.all
		render json: @users
	end

	def show 
		@user = User.first
		render json: @user
	end
	
  def create
    @user = User.new(attributes)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      respond_with_errors(@user)
    end
  end

  private

  def user_params
    params.require(:data).permit(:type, {
      attributes: [:username, :first_name, :last_name]
    })
  end

  def user_attributes
    rental_unit_params[:attributes] || {}
  end
end
