require "oauth"
class UsersController < ApplicationController
  def show

  end

  def subscribe
    consumer_key = "myvwf5hwtsvm8yc55rwcm43xcheje94f"
    consumer_secret = "Q6AtWGPFNTZV8jS8tx95Uk4fWNWzR4vM43uKKNjpHdz2jS6drPXwcg2ScBShfUdS"
    consumer = OAuth::Consumer.new(
      consumer_key,
      consumer_secret,
      :site => "https://api.bodymedia.com",
      :access_token_path  => "/oauth/access_token?api_key=#{consumer_key}",
      :http_method => :get)
    access_token = OAuth::AccessToken.new consumer
    response = access_token.post(
      "/v2/json/callback?api_key=#{consumer_key}",
      "callback_url" => "http://janjiss.pagekite.me/endpoint",
      "hub.verify_token" => "FUUUUUU",
      "type" => "BURN"
    )
    render :text => response.to_yaml
  end

  def endpoint
    if request.get?
      render :text => "FUUUUUU"
    elsif request.post?

    end
    
  end
end
