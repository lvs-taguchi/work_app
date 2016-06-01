require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Work App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Work App')
    end


    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
end