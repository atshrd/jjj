class UsersController < ApplicationController
  def index

  end

  def show
    @reservations = Reservation.all
    @teachers = Teacher.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
