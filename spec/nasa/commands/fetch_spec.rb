require "spec_helper"

describe Nasa::Commands::Photo do
  def app
    Nasa::Bot.instance
  end

  subject { app }

  it "returns the URL" do
    expect(:message => "#{SlackRubyBot.config.user} please show photo", :channel => "channel").to respond_with_slack_message("https://apod.nasa.gov/apod/image/1712/ArcticGeminid_Sutie_1080.jpg")
  end
end
