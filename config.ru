require "bundler/setup"
require "firehose"

# Quick hack to silence Rack::Lint -- I'm sure there's a better way!
class Rack::Lint
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  end
end

run Firehose::Rack::App.new
