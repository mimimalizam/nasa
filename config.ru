$LOAD_PATH.unshift(File.dirname(__FILE__))

require "dotenv"
Dotenv.load

require "nasa"
require "web"

Thread.abort_on_exception = true

Thread.new do
  begin
    Nasa::Bot.run
  rescue Exceiption => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Nasa::Web
