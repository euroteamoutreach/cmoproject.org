module CustomHelpers
  def current_project_year
    "2016"
  end

  def project_start_date
    "June 20, #{current_project_year}"
  end

  def project_end_date
    "August 5, #{current_project_year}"
  end

  def max_arrival_date
    "June 22"
  end

  def operations_fee
    "140"
  end

  def weekly_cost
    (operations_fee.to_i * 2).to_s
  end

  def info_pack_finance_page
    "16"
  end

  def registration_deadline
    "April 1, #{current_project_year}"
  end

  def data_sub(string)
    string.gsub!("%{current_project_year}", current_project_year)
    string.gsub!("%{project_start_date}", project_start_date)
    string.gsub!("%{project_end_date}", project_end_date)
    string.gsub!("%{operations_fee}", operations_fee)
    string.gsub!("%{weekly_cost}", weekly_cost)
    string.gsub!("%{max_arrival_date}", max_arrival_date)
    string.gsub!("%{info_pack_finance_page}", info_pack_finance_page)
    string
  end

  def registration_closed?
    registration_deadline.to_date < Date.today
  end

  def registration_message
    if registration_closed?
      "<span class=\"closed\">Registration for CMO #{current_project_year} is now closed.</span>"
    else
      "All applications for CMO #{current_project_year} are due no later than #{registration_deadline}."
    end
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

  def overview_smart_path(path)
    if !!(path =~ /index/)
      "#call-to-men"
    else
      "/#call-to-men"
    end
  end

  def home_smart_path(path)
    if !!(path =~ /index/)
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

  def page_description
    current_page.data.description || data.site.description
  end

  # https://robots.thoughtbot.com/organized-workflow-for-svg
  # https://gist.github.com/bitmanic/0047ef8d7eaec0bf31bb
  def inline_svg(filename, options = {})
    root = Middleman::Application.root
    file_path = "#{root}/source/images/#{filename}"
    if File.exists?(file_path)
      file = File.read(file_path).force_encoding("UTF-8")
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css "svg"
      if options[:class].present?
        svg["class"] = options[:class]
      end
      doc
    else
      "file not found: #{file_path}"
    end
  end

  def image_url(filename)
    URI.join(data.site.url, image_path(filename))
  end
end
