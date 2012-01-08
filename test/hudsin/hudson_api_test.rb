require_relative "../helper"
require "hudsin/hudson_api"

module Hudsin
  class HudsonApiTest < MiniTest::Unit::TestCase
    def test_gets_project_names
      # VCR.use_cassette("three projects") do
      #   api = HudsonApi.new("http://hudson-server.com/hudson")
      #   assert_equal api.project_names, ["project1", "project2", "project3"]
      # end
    end
  end
end
