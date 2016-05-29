describe "FAQ page", type: :feature do
  before do
    visit "/faq"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Frequently Asked Questions")
  end
end
