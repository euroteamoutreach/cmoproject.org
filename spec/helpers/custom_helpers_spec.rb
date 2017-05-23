include CustomHelpers

describe CustomHelpers do
  describe "#current_project" do
    it "returns a string which is the current project year" do
      expect(current_project_year).to match(/\A\d{4}\z/)
    end
  end

  describe "#project_start_date" do
    it "returns a properly formatted date string" do
      expect(project_start_date).to match(/\A\w+\s\d{1,2},\s\d{4}\z/)
    end
  end

  describe "#project_end_date" do
    it "returns a properly formatted date string" do
      expect(project_end_date).to match(/\A\w+\s\d{1,2},\s\d{4}\z/)
    end
  end

  describe "#max_arrival_date" do
    it "returns a properly formatted date string" do
      expect(max_arrival_date).to match(/\w+\s\d{1,2}\z/)
    end
  end

  describe "#operations_fee" do
    it "returns a three-digit numeric string" do
      expect(operations_fee).to match(/\A\d{3}\z/)
    end
  end

  describe "#weekly_cost" do
    it "returns a three-digit numeric string" do
      expect(operations_fee).to match(/\A\d{3}\z/)
    end
  end

  describe "#info_pack_finance_page" do
    it "returns a one or two-digit numeric string" do
      expect(info_pack_finance_page).to match(/\A\d{1,2}\z/)
    end
  end

  describe "#registration_deadline" do
    it "returns a properly formatted date string" do
      expect(registration_deadline).to match(/\A\w+\s\d{1,2},\s\d{4}\z/)
    end
  end

  describe "#full_title" do
    context "when no custom page title is provided" do
      it "provides only the base title" do
        site_title = "MAIN SITE TITLE"
        page_title = nil
        expect(full_title(page_title, site_title)).to eq("MAIN SITE TITLE")
      end
    end

    context "when a custom title is provided" do
      it "displays the custom title and the base title separated by a pipe" do
        site_title = "MAIN SITE TITLE"
        page_title = "Custom"
        expect(full_title(page_title, site_title)).to eq("Custom | MAIN SITE TITLE")
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

  describe "#add_visible_class" do
    context "when not on index page" do
      it "returns ' is-visible'" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(add_visible_class(current_page.path)).to eq(" is-visible")
      end
    end

    context "when on index page" do
      it "returns nil" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("index")
        expect(add_visible_class(current_page.path)).to be_nil
      end
    end
  end

  describe "#contact_text" do
    context "when on FAQ page" do
      it "returns faq contact text" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("faq")
        expect(contact_text(current_page.path)).to match(/find your answer/)
      end
    end

    context "when not on FAQ page" do
      it "returns normal contact text" do
        current_page = double("Sitemap")
        allow(current_page).to receive(:path).and_return("other-page")
        expect(contact_text(current_page.path)).to match(/question about CMO/)
      end
    end
  end

  describe "#info_pack_path" do
    it "returns the correct path for the info pack pdf" do
      expect(info_pack_path).to match(/\A\/files\/cmo-\d{4}-info-pack\.pdf\z/)
    end
  end

  describe "#application_path" do
    it "returns the correct path for the application pdf" do
      expect(application_path).to match(/\A\/files\/cmo-\d{4}-application\.pdf\z/)
    end
  end

  describe "#rec_form_path" do
    it "returns the correct path for the rec form pdf" do
      expect(rec_form_path).to match(/\A\/files\/cmo-\d{4}-rec-form\.pdf\z/)
    end
  end
end
