activate :directory_indexes

set :css_dir, "assets/css"
set :js_dir, "assets/js"
set :images_dir, "assets/images"
set :relative_links, true
set :haml, { ugly: true, format: :html5 }

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/404.html", directory_index: false

configure :development do
  activate :livereload
end

activate :external_pipeline,
  name: :gulp,
  latency: 2,
  command: build? ? "./node_modules/gulp/bin/gulp.js buildSite" : "./node_modules/gulp/bin/gulp.js default",
  source: ".tmp/dist"

configure :build do
  ignore "stylesheets/*"
  ignore "javascripts/*"

  activate :gzip
  activate :minify_css
  activate :minify_javascript

  set :url_root, "http://cmoproject.org"
  activate :search_engine_sitemap

  activate :asset_hash
  activate :asset_host,
    host: "//d3fljjvmwfqmg4.cloudfront.net"
end

activate :s3_sync do |s3|
  s3.bucket = "cmoproject.org"
  s3.aws_access_key_id = ENV["AWS_ACCESS_KEY_ID"]
  s3.aws_secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
  s3.prefer_gzip = true
  s3.index_document = "index.html"
  s3.error_document = "404.html"
end
