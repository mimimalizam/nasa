require "spec_helper"

describe Nasa::Commands::Photo do
  def app
    Nasa::Bot.instance
  end

  subject { app }

  it "returns the URL" do
    expect(:message => "#{SlackRubyBot.config.user} please show photo", :channel => "channel").to respond_with_slack_message("https://apod.nasa.gov/apod/image/1712/NGC7000_PaoloMoroni1024.jpg")
  end
end
