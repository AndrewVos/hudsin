require "minitest/pride"
require "minitest/unit"
require "minitest/autorun"
require "hudsin"
require "vcr"
require "webmock"

VCR.config do |config|
  config.cassette_library_dir = 'fixtures/vcr_cassettes'
  config.stub_with :webmock
end
