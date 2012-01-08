Before do
  @output_spy = OutputSpy.new
end

Given /^I have projects named project1, project2, and project3$/ do
  @cassette = "three projects"
end

When /^I run hudsin with the parameters "([^"]*)", "([^"]*)", "([^"]*)"$/ do |arg1, arg2, arg3|
  VCR.use_cassette(@cassette) do
    options = Hudsin::OptionParser.new.parse([arg1, arg2, arg3])
    Hudsin::ExecutesHudsin.execute(options, Hudsin::HudsonApi.new(options[:server]), @output_spy)
  end
end

Then /^the output should contain "([^"]*)"$/ do |expected|
  @output_spy.all_output.should include expected
end
