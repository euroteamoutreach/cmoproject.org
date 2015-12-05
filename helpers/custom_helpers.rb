module CustomHelpers
  def current_project_year
    "2016"
  end

  def full_title(page_title=nil)
    page_title ||= ""
    base_title = "Carpathian Mountain Outreach"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def overview_smart_path
    if !!(current_page.path =~ /index/)
      "#call-to-men"
    else
      "/#call-to-men"
    end
  end

  def home_smart_path
    if !!(current_page.path =~ /index/)
      "#"
    else
      "/"
    end
  end

  def info_pack_path
    "/files/cmo-#{current_project_year}-info-pack.pdf"
  end

  def application_path
    "/files/cmo-#{current_project_year}-application.pdf"
  end

  def rec_form_path
    "/files/cmo-#{current_project_year}-rec-form.pdf"
  end

  def contact_text
    if !!(current_page.path =~ /faq/)
      "Didn&rsquo;t find your answer? Drop us a line!"
    else
      "Got a question about CMO? Drop us a line!"
    end
  end

  def add_visible_class
    unless !!(current_page.path =~ /index/)
      " is-visible"
    end
  end

  # https://robots.thoughtbot.com/organized-workflow-for-svg
  # https://gist.github.com/bitmanic/0047ef8d7eaec0bf31bb
  def inline_svg(filename, options = {})
    asset = sprockets.find_asset(filename)
    if asset.nil?
      %(
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 30"
          width="400px" height="30px"
        >
          <text font-size="16" x="8" y="20" fill="#cc0000">
            Error: '#{filename}' could not be found.
          </text>
          <rect
            x="1" y="1" width="398" height="28" fill="none"
            stroke-width="1" stroke="#cc0000"
          />
        </svg>
      )
    else
      file = asset.source.force_encoding("UTF-8")
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css "svg"
      if options[:class].present?
        svg["class"] = options[:class]
      end
      doc
    end
  end
end
