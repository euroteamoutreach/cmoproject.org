describe "home page", type: :feature do
  before do
    visit "/"
  end

  it "displays the alpha section" do
    expect(page).to have_css("section.alpha")
  end
end
