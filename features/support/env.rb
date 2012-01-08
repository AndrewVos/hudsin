require "httparty"
require "vcr"

$:.unshift File.expand_path('../../../lib', __FILE__)
require "hudsin"
require "hudsin/option_parser"
require "hudsin/hudson_api"

VCR.config do |config|
  config.cassette_library_dir = 'fixtures/vcr_cassettes'
  config.stub_with :webmock
end
