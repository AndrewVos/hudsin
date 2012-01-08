require_relative "../helper"

module Hudsin
  class ExecutesHudsinTest < MiniTest::Unit::TestCase
    class FakeHudsonApi
      def project_names
        ["project1", "project2"]
      end
    end

    class OutputSpy
      def lines
        @lines ||= []
      end

      def puts value
        @lines ||= []
        @lines << value
      end
    end

    def setup
      @output = OutputSpy.new
    end

    def test_displays_help_text
       ExecutesHudsin.execute({}, FakeHudsonApi.new, @output)
       assert_equal ["Usage:"], @output.lines
    end

    def test_lists_project_names
       ExecutesHudsin.execute({:command => "list"}, FakeHudsonApi.new, @output)
       assert_equal ["project1", "project2"], @output.lines
    end
  end
end
