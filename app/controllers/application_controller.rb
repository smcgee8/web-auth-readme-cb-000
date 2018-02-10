class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def authenticate_user
      client_id = ENV['FOURSQUARE_CLIENT_ID']
      redirect_uri = CGI.escape("174.138.35.103:58152/auth")
    end

    def logged_in?
      !!session[:token]
    end
end
