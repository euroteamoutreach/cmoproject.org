describe "footer nav links", type: :feature do
  it "correctly navigates to the Overview page (root)" do
    visit "/apply"
    within "footer.universal-footer" do
      click_link "Overview"
      expect(current_path).to eq("/")
    end
  end

  it "correctly navigates to the Movie page" do
    visit "/"
    within "footer.universal-footer" do
      click_link "Movie"
      expect(current_path).to eq("/movie")
    end
  end

  it "correctly navigates to the FAQ page" do
    visit "/movie"
    within "footer.universal-footer" do
      click_link "FAQ"
      expect(current_path).to eq("/faq")
    end
  end

  it "correctly navigates to the Testimonies page" do
    visit "/faq"
    within "footer.universal-footer" do
      click_link "Testimonies"
      expect(current_path).to eq("/testimonies")
    end
  end

  it "correctly navigates to the Requirements page" do
    visit "/testimonies"
    within "footer.universal-footer" do
      click_link "Requirements"
      expect(current_path).to eq("/requirements")
    end
  end

  it "correctly navigates to the Apply page" do
    visit "/requirements"
    within "footer.universal-footer" do
      click_link "Apply Now"
      expect(current_path).to eq("/apply")
    end
  end

  it "correctly navigates to the Downloads page" do
    visit "/apply"
    within "footer.universal-footer" do
      click_link "View all"
      expect(current_path).to eq("/downloads")
    end
  end

  it "correctly navigates to the ETO site" do
    visit "/downloads"
    within "footer.universal-footer" do
      click_link "Euro Team Outreach, Inc."
      expect(current_url).to eq("http://euroteamoutreach.org/")
    end
  end

  it "correctly navigates to the ETO Facebook page" do
    visit "/"
    within "footer.copyright-footer" do
      find("a.facebook").click
      expect(current_url).to eq("https://www.facebook.com/euroteamoutreach")
    end
  end

  it "correctly navigates to the ETO Twitter page" do
    visit "/movie"
    within "footer.copyright-footer" do
      find("a.twitter").click
      expect(current_url).to eq("https://twitter.com/eto_ukraine")
    end
  end

  it "correctly navigates to the euroteamoutreach.org GitHub page" do
    visit "/faq"
    within "footer.copyright-footer" do
      find("a.github").click
      expect(current_url).to eq("https://github.com/joshukraine/cmoproject.org")
    end
  end
end
