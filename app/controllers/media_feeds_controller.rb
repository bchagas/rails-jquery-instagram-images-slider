class MediaFeedsController < ApplicationController

  def index
    @hashie = Hashie::Mash.new HTTParty.get("https://api.instagram.com/v1/users/self/media/recent?access_token=" + session[:access_token])
  end

end
