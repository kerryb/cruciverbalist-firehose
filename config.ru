require "bundler/setup"
require "firehose"

run Firehose::Rack::App.new
