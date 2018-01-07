module Nasa
  module Commands
    class Photo < SlackRubyBot::Commands::Base

      command "please show us a photo" do |client, data, match|
        client.say(:channel => data.channel,
                   :text => Nasa::Client.new.fetch_data["url"])
      end

      command "what is it about" do |client, data, match|
        client.say(:channel => data.channel,
                   :text => Nasa::Client.new.fetch_data["explanation"])
      end

    end
  end
end
