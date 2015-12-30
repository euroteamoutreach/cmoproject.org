require "middleman"
require "rspec"
require "capybara/rspec"
require "capybara-webkit"
require "capybara/webkit/matchers"

Capybara.javascript_driver = :webkit

Capybara.app = Middleman::Application.server.inst do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), ".."))
  set :environment, :development
  set :show_exceptions, false
end

Capybara::Webkit.configure do |config|
  config.block_unknown_urls
end
