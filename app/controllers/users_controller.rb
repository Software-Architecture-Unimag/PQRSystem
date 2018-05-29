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

  def create
  	@user = User.new(
  						first_name: params[:users][:first_name],
  						last_name: params[:users][:last_name],
  						email: params[:users][:email],
  						phone_number: params[:users][:phone_number],
  						birth_date: params[:users][:birth_date],
  						password: params[:users][:password]

  					)
  	if @article.save 
  		redirect_to @article
  	else
  		render :new
  	end
  end

end
