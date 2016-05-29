describe "Apply page", type: :feature do
  before do
    visit "/apply"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Apply")
  end
end
