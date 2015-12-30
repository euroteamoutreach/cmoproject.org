describe "home page", type: :feature do
  before do
    visit "/"
  end

  it "displays the correct heading" do
    expect(page).to have_selector("h1", text: "Carpathian Mountain Outreach")
  end

  it "initially hides the opaque nav bar" do
    expect(page).not_to have_css("header.navigation.transition.is-visible")
  end

  it "should not have JavaScript errors", :js => true do
    # save_and_open_page
    expect(page).not_to have_errors
  end
end
