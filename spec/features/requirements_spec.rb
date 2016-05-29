describe "Requirements page", type: :feature do
  before do
    visit "/requirements"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Requirements")
  end
end
