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

  context "nasa can share image of the day and its explanation" do
    let(:explanation) { "Fans of our fair planet might recognize the outlines of these cosmic clouds. On the left, bright emission outlined by dark, obscuring dust lanes seems to trace a continental shape, lending the popular name North America Nebula to the emission region cataloged as NGC 7000. To the right, just off the North America Nebula's east coast, is IC 5070, whose profile suggests the Pelican Nebula.  The two bright nebulae are about 1,500 light-years away, part of the same large and complex star forming region, almost as nearby as the better-known Orion Nebula. At that distance, the 6 degree wide field of view would span 150 light-years. This careful cosmic portrait uses narrow band images to highlight the bright ionization fronts and the characteristic red glow from atomic hydrogen gas. These nebulae can be seen with binoculars from a dark location.  Look northeast of bright star Deneb in the constellation of Cygnus the Swan." }

    it "when nicely asked nasa presents story and an image" do
      VCR.use_cassette("apod/picture") do
        expect(:message => "#{SlackRubyBot.config.user} please show us a photo",
               :channel => "channel").to respond_with_slack_message("https://apod.nasa.gov/apod/image/1712/NGC7000_PaoloMoroni1024.jpg")

        expect(:message => "#{SlackRubyBot.config.user} what is it about",
               :channel => "channel").to respond_with_slack_message(explanation)
      end
    end
  end

end
