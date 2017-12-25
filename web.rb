require "sinatra/base"

module Nasa
  class Web < Sinatra::Base
    get "/" do
      "Space is good for you"
    end
  end
end
