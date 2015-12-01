configure :development do
  activate :livereload
end

activate :directory_indexes
page "/404.html", directory_index: false

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :partials_dir, "partials"

helpers do
  def full_title(page_title=nil)
    page_title ||= ""
    base_title = "Carpathian Mountain Outreach"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def overview_smart_path(path)
    if !!(path =~ /index/)
      "#call-to-men"
    else
      "/#call-to-men"
    end
  end
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
