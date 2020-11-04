class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false

  # sends the user on a trip to the provider,
  # and after authorizing there back to the callback url.
  def oauth
    login_at(params[:provider])
  end

  def callback
    redirect_to login_url and return if params[:denied].present?

    provider = params[:provider]
    if @user = login_from(provider)
      redirect_to root_path, notice: t("user_sessions.create.notice")
    else
      begin
        @user = create_from(provider)
        @user.activate! # if you are using user_activation submodule

        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to root_path, notice: t("user_sessions.create.notice")
      rescue
        redirect_to root_path, alert: t("user_sessions.create.flash_alert")
      end
    end
  end
end
