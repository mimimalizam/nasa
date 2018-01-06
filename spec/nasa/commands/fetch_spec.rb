require "spec_helper"

describe Nasa::Commands::Photo do
  before do
    Timecop.freeze(Time.new(2017, 12, 01, 17))
  end

  after do
    Timecop.return
  end

  def app
    Nasa::Bot.instance
  end

  subject { app }

  it "returns the URL" do
    VCR.use_cassette("apod/picture") do
      expect(:message => "#{SlackRubyBot.config.user} please show us a photo",
             :channel => "channel").to respond_with_slack_message("https://apod.nasa.gov/apod/image/1712/NGC7000_PaoloMoroni1024.jpg")
    end
  end
end
