$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
ENV["RAILS_ENV"] ||= "test"

require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  c.hook_into :webmock
  c.default_cassette_options = { :record => :new_episodes }
  c.allow_http_connections_when_no_cassette = false
end

require "slack-ruby-bot/rspec"
require "nasa"
