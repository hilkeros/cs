require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title', :text => "Creatief Schrijven | Home")
    end
  end
  
  describe "Contact page" do
    
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "Creatief Schrijven | Contact")
    end
  end
end
