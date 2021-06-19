class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:follow_id])
    following = current_user.follow(@user)
    if following.save
      flash[:success] = t(".success")
      redirect_to @user
    else
      flash[:danger] = t(".failed")
      redirect_to @user
    end
  end

  def destroy
    @user = User.find(params[:follow_id])
    following = current_user.unfollow(@user)
    if following.destroy
      flash[:success] = t(".success")
      redirect_to @user
    else
      flash[:danger] = t(".failed")
      redirect_to @user
    end
  end
end
