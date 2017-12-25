module Nasa
  module Commands
    class Photo < SlackRubyBot::Commands::Base
      command 'fetch' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end
