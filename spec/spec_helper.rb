require 'rubygems'
require 'bundler/setup'
require 'ocho'

RSpec.configure do |config|
  config.color = true
end

def fixture_file(filename)
  File.expand_path("../fixtures/#{filename}", __FILE__)
end
