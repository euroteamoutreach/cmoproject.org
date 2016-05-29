describe "top nav links", type: :feature do
  it "correctly navigates to the Overview page (still at root)" do
    visit "/"
    within ".navigation" do
      click_link "Overview"
      expect(current_path).to eq("/")
    end
  end

  it "correctly navigates to the Movie page" do
    visit "/#overview"
    within ".navigation" do
      click_link "Movie"
      expect(current_path).to eq("/movie")
    end
  end

  it "correctly navigates to the Testimonies page" do
    visit "/movie"
    within ".navigation" do
      click_link "Testimonies"
      expect(current_path).to eq("/testimonies")
    end
  end

  it "correctly navigates to the FAQ page" do
    visit "/testimonies"
    within ".navigation" do
      click_link "FAQ"
      expect(current_path).to eq("/faq")
    end
  end

  it "correctly navigates to the Downloads page" do
    visit "/faq"
    within ".navigation" do
      click_link "Downloads"
      expect(current_path).to eq("/downloads")
    end
  end

  it "correctly navigates to the Apply page" do
    visit "/downloads"
    within ".navigation" do
      click_link "Apply"
      expect(current_path).to eq("/apply")
    end
  end

  it "correctly navigates to the Home page" do
    visit "/apply"
    within ".navigation-wrapper" do
      find("a.logo").click
      expect(current_path).to eq("/")
    end
  end
end
