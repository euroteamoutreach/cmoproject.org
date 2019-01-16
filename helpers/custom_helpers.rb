module CustomHelpers
  def current_project_year
    "2019"
  end

  def project_start_date
    "June 13, #{current_project_year}"
  end

  def project_end_date
    "July 8, #{current_project_year}"
  end

  def max_arrival_date
    "June 12"
  end

  def operations_fee
    "650"
  end

  def personal_support
    "600"
  end

  def total_cost
    (operations_fee.to_i + personal_support.to_i).to_s
  end

  def weekly_cost
    (operations_fee.to_i * 2).to_s
  end

  def info_pack_finance_page
    "16"
  end

  def statement_faith_page
    "7"
  end

  def registration_deadline
    "April 15, #{current_project_year}"
  end

  def data_sub(string)
    variables = %w{current_project_year project_start_date project_end_date
                   operations_fee personal_support total_cost weekly_cost max_arrival_date
                   info_pack_finance_page statement_faith_page}
    variables.each do |variable|
      value = send(variable)
      string.gsub!("%{#{variable}}", value)
    end
    string
  end

  def registration_message
    if registration_closed?
      "<span class=\"closed\">Registration for CMO #{current_project_year} is now closed.</span>"
    else
      "All applications for CMO #{current_project_year} are due no later than #{registration_deadline}."
    end
  end

  def full_title(site_title, page_title = nil)
    page_title ||= ""
    if page_title.empty?
      site_title
    else
      page_title + " | " + site_title
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

  def contact_text(path)
    if !!(path =~ /faq/)
      "Didn&rsquo;t find your answer? Drop us a line!"
    else
      "Got a question about CMO? Drop us a line!"
    end
  end

  def add_visible_class(path)
    unless !!(path =~ /index/)
      " is-visible"
    end
  end

  def smart_robots(path, env)
    # Add paths (like "thank you" pages) that search engines should not index.
    # Multiple paths look like this:
    # /first_path|another_path|yet_another/
    if !!(path =~ /thanks/) || env != "production"
      "noindex, nofollow"
    else
      "index, follow"
    end
  end

  # https://robots.thoughtbot.com/organized-workflow-for-svg
  # https://gist.github.com/bitmanic/0047ef8d7eaec0bf31bb
  def inline_svg(filename, options = {})
    root = Middleman::Application.root
    file_path = "#{root}/source/assets/images/#{filename}"
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

  private

    def registration_closed?
      Date.parse(registration_deadline) < Date.today
    end
end
