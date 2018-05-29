class UsersController < ApplicationController
  def index
     @users = User.all
  end

  def show
     @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
	@user.update(users_params)
	#	render :index
	#else
	#	render :edit
	#end  	
  end

  def create
  	@user = User.new(users_params)
  	if @article.save 
  		redirect_to @article
  	else
  		render :new
  	end
  end
  
  def destroy
     @user = User.find(params[:id])
     @user.destroy

  end

  private

  def users_params
  	params.require(:user).permit(:email,:first_name,:last_name,:phone_number,
  								:birth_date,:password,:rol_id,:department_id )
  end

end
