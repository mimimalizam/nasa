require "byebug"

module Nasa
  module Commands
    class Photo < SlackRubyBot::Commands::Base
      command "please show photo" do |client, data, match|
        client.say(:channel => data.channel,
                   :text => "")
      end
    end
  end
end
