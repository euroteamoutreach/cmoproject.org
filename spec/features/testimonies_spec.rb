describe "Testimonies page", type: :feature do
  before do
    visit "/testimonies"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Testimonies")
  end
end
