class ApplicationController < ActionController::Base

  before_action :set_session_id
  helper_method :signed_in?

  private

    def signed_in?
      current_user.present?
    end

    def current_user
      @user ||= User.find_or_create_by(session_id: session[:session_id])
    end

    def set_session_id
      session[:session_id] ||= SecureRandom.uuid
    end
end
