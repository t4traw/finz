class PagesController < ApplicationController
  skip_before_action :require_login

  def home
    @tackles = Tackle.all.order(id: :desc)
    render :about unless current_user
  end

  def about
    @tackles = Tackle.all.order(id: :desc)
  end
end
