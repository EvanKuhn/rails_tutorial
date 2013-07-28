require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(page_title) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_title(page_title("Help")) }
    it { should have_content('Help') }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_title(page_title("About Us")) }
    it { should have_content('About Us') }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_title(page_title("Contact")) }
    it { should have_content('Contact') }
  end
end
