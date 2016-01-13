require "spec_helper"

describe "styles", type: :feature do
  context "asset pipeline stylesheets" do
    it "has a base css file" do
      visit "app/assets/stylesheets/dictate_css/base.css"
      expect(page.body).to include ".hide {"
    end

    it "has a colors css file" do
      visit "app/assets/stylesheets/dictate_css/colors.css"
      expect(page.body).to include ".bg-white {"
    end

    it "has a floating css file" do
      visit "app/assets/stylesheets/dictate_css/floating.css"
      expect(page.body).to include ".float-right {"
    end

    it "has a hide_show css file" do
      visit "app/assets/stylesheets/dictate_css/hide_show.css"
      expect(page.body).to include "@media only screen and (min-width: 1024px) {"
    end
  end
end