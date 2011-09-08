class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :auth_url, :logged_in

  def client
    @client ||= OAuth2::Client.new('CLIENT_ID', 'CLIENT_SECRET', :site => 'http://instagram.com')
  end

  def auth_url
    client.web_server.authorize_url(:redirect_uri => 'http://localhost:3000/auth/instagram/callback')
  end

  def logged_in
    session[:access_token]
  end
end
