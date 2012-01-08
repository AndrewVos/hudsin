require_relative "../helper"
require "hudsin/option_parser"

module Hudsin
  class HudsonApiTest < MiniTest::Unit::TestCase
    def test_parses_options
      options = ["--server", "http://andrewvos.com", "command_name"]
      parsed = OptionParser.new.parse(options)
      assert_equal "http://andrewvos.com", parsed[:server]
      assert_equal "command_name", parsed[:command]
    end
  end
end
