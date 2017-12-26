module Nasa
  class Client

    BASE_URL = "https://api.nasa.gov/planetary/apod"
    API_KEY = ENV["NASA_API_KEY"]

    def fetch_data
      JSON.parse(response.body)
    end

    private

    def connection
      @contection ||= Faraday.new(BASE_URL) do |faraday|
        faraday.request :basic_auth,
          Nasa::Client::API_KEY,
          "X"
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
      end
    end

    def response
      connection.get do |request|
        request.params["date"] = "2017-12-01"
      end
    end

  end
end
