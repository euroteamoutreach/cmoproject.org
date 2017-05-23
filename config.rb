activate :directory_indexes

set :relative_links, true
set :haml, { ugly: true, format: :html5 }

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/404.html", directory_index: false

set :css_dir, "assets/stylesheets"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"

configure :build do
  activate :external_pipeline,
    name: :gulp,
    command: "npm run production",
    source: ".tmp",
    latency: 1

  activate :gzip

  activate :asset_hash
  activate :asset_host,
    host: "//d3fljjvmwfqmg4.cloudfront.net",
    rewrite_ignore: ["*.js"]

  set :url_root, "http://cmoproject.org"
  activate :search_engine_sitemap

  ignore "assets/javascripts/all.js"
  ignore "assets/stylesheets/site"

  activate :minify_html do |html|
    html.remove_quotes = false
    html.remove_intertag_spaces = true
  end
end

activate :s3_sync do |s3|
  s3.bucket = "cmoproject.org"
  s3.aws_access_key_id = ENV["AWS_ACCESS_KEY_ID"]
  s3.aws_secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
  s3.prefer_gzip = true
  s3.index_document = "index.html"
  s3.error_document = "404.html"
end
