require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Timelining'" do
      visit '/pages/home'
      expect(page).to have_content('Timelining')
    end
  end
end