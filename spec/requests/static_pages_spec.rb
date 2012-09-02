require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title', :text => "Creatief Schrijven | Home")
    end
  end
  
  describe "Contact page" do
    
    it "should have the title 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('title', :text => "Creatief Schrijven | Contact")
    end
  end
end
