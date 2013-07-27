require 'spec_helper'

describe "Static pages" do
  def get_title(page_name)
    "Ruby on Rails Tutorial Sample App | #{page_name}"
  end

  describe "Home page" do
    let(:url) { '/static_pages/home' }

    it "should have the right title" do
      visit url
      expect(page).to have_title(get_title("Home"))
    end

    it "should have the content 'Sample App'" do
      visit url
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do
    let(:url) { '/static_pages/help' }

    it "should have the right title" do
      visit url
      expect(page).to have_title(get_title("Help"))
    end

    it "should have the content 'Help'" do
      visit url
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    let(:url) { '/static_pages/about' }

    it "should have the right title" do
      visit url
      expect(page).to have_title(get_title("About Us"))
    end

    it "should have the content 'About Us'" do
      visit url
      expect(page).to have_content('About Us')
    end
  end

  describe "Contacts page" do
    let(:url) { '/static_pages/contacts' }

    it "should have the right title" do
      visit url
      expect(page).to have_title(get_title("Contacts"))
    end

    it "should have the content 'Contacts'" do
      visit url
      expect(page).to have_content('Contacts')
    end
  end
end
