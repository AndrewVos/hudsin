require "json"
require "httparty"

module Hudsin
  class HudsonApi
    def initialize url
      @url = url
    end

    def project_names
      response = HTTParty.get("#{@url}/api/json")
      json = JSON.parse(response.body)
      json["jobs"].map{|j| j["name"]}
    end
  end
end
