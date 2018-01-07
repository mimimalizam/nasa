module Nasa
  class Bot < SlackRubyBot::Bot

    help do
      title "Nasa Bot"
      desc "This bot shows Astronomy Picture of the Day by NASA."

      command "please show us a photo" do
        desc "When nicely asked, nasa will share picture URL."
      end

      command "what is it about" do
        desc "Bot will tell a short story."
      end
    end

  end
end
