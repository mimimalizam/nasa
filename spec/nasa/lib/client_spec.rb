require "spec_helper"

describe Nasa::Client do
  subject { described_class.new.fetch_data }

  it "includes url key" do
    VCR.use_cassette("apod/response") do
      expect(subject).not_to be_nil
      expect(subject.keys).to include("url", "explanation")
    end
  end
end
