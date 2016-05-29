describe "Movie page", type: :feature do
  before do
    visit "/movie"
  end

  it "displays the correct heading" do
    expect(page).to have_css("section.movie-hero")
    expect(page).to have_selector("h3", text: "Looking for the short version?")
  end
end
