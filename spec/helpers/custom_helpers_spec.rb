include CustomHelpers

describe CustomHelpers do

  describe "#current_project" do
    it "returns a string which is the current project year" do
      expect(current_project_year).to eq("2016")
    end
  end

  describe "#full_title" do
    context "when no custom page title is provided" do
      it "provides only the base title" do
        title = nil
        expect(full_title(title)).to eq("Carpathian Mountain Outreach")
      end
    end

    context "when a custom title is provided" do
      it "displays the custom title and the base title separated by a pipe" do
        title = "Custom"
        expect(full_title(title)).to eq("Custom | Carpathian Mountain Outreach")
      end
    end
  end

  describe "#overview_smart_path" do
    context "when on home page" do
      it "returns the Overview path without a leading slash" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(overview_smart_path(current_page.path)).to eq("#call-to-men")
      end
    end

    context "when not on home page" do
      it "returns the Overview path *with* a leading slash" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(overview_smart_path(current_page.path)).to eq("/#call-to-men")
      end
    end
  end

  describe "#home_smart_path" do
    context "when on home page" do
      it "returns '#'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(home_smart_path(current_page.path)).to eq("#")
      end
    end

    context "when not on home page" do
      it "returns '/'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(home_smart_path(current_page.path)).to eq("/")
      end
    end
  end
end
