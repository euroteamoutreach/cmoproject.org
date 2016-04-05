activate :directory_indexes

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :relative_links, true
set :haml, { ugly: true, format: :html5 }

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/404.html", directory_index: false

activate :external_pipeline,
  name: :gulp,
  command: build? ? "npm run production" : "npm run gulp",
  source: ".tmp",
  latency: 1

configure :build do

  # Minify HTML
  activate :minify_html do |html|
    html.remove_quotes = false
    html.remove_intertag_spaces = true
  end

  # activate :gzip
  # activate :minify_css
  # activate :minify_javascript

  # Ignore the CSS file Middleman normally generates
  # Middleman expects `site.css.scss` → `site.css`
  # We strip the `.css` to prevent Gulp generating `site.css.css`
  # Add your site's main `.scss` filename (without the extension)
  # To understand more, comment this out and run `middleman build`
  ignore "stylesheets/site"

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
