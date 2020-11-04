class PagesController < ApplicationController
  skip_before_action :require_login

  def home
    @tackles = Tackle.all
    render :about unless current_user
  end

  def about
    @tackles = Tackle.all
  end
end