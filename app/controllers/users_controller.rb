class UsersController < ApplicationController
  before_action :set_current_user, only: [:edit, :change_password, :delete, :update, :destroy]
  skip_before_action :require_login, only: [:index, :new, :show, :create, :activate]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def change_password
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, notice: t('.notice')
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: t('.notice')
    else
      render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      redirect_to root_path, notice: t('.notice')
    end
  end

  def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      redirect_to(login_path, notice: t('.notice'))
    else
      not_authenticated
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :agreement, :avatar, :avatar_cache)
    end
end
