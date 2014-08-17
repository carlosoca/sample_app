class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

  def new
  	@user = User.new

  end

  def create
  	@user = User.new(user_params)
  	if @user.save
<<<<<<< HEAD
      flash[:sucess] = "Welcome to the Sample App"
=======
      flash[:sucess] = "Welcome to Hack Investments"
>>>>>>> 777d821ffc45c7a5e13976ff971e789216204855
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end




end
