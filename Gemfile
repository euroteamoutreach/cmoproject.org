source "https://rubygems.org"

gem "middleman", "~> 3.4.0"
gem "middleman-livereload", "~> 3.1.0"

gem "bitters", "~> 1.0"
gem "bourbon", "~> 4.0"
gem "neat", "~> 1.7"
gem "nokogiri", "~> 1.6"

source "https://rails-assets.org" do
  gem "rails-assets-jquery", "~> 2.0"
  gem "rails-assets-moment", "~> 2.0"
end

gem "middleman-s3_sync", "~> 3.3.0"
gem "middleman-search_engine_sitemap", "~> 1.0"
gem "middleman-cloudfront", "~> 0.2"
gem "unf"

group :development do
  gem "rspec"
  gem "capybara"
  gem "launchy"
end

# Temporary workaround for fog error that blows up s3_sync
gem "fog-core", "1.34.0"
