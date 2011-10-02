class SessionsController < ApplicationController

  def callback
    access_token = client.web_server.get_access_token(params[:code], :redirect_uri => 'http://localhost:3000/auth/instagram/callback')
    session[:access_token] = access_token.token
    redirect_to root_url
  end

  def destroy
    session[:access_token] = nil
    redirect_to root_url
  end

end
