describe "Downloads page", type: :feature do
  before do
    visit "/downloads"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Downloads")
  end
end
