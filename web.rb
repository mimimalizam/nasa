require "sinatra/base"
require "httparty"
require "json"

module Nasa
  class Web < Sinatra::Base

    get "/" do
      "Space is good for you"
    end

    post "/houston" do
      return if params[:token] != ENV["SLACK_WEBHOOK_TOKEN"]
      respond_message(
        "Roger. Nasa will show you photo, just be nice please."
      )
    end

    def respond_message(message)
      content_type :json
      { :text => message }.to_json
    end

  end
end
