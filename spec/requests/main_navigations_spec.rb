require 'spec_helper'

describe "MainNavigations" do
  
  describe "news" do
    before do
      FactoryGirl.create(:post, title: "Titel 1", body: "Dit is een tekst")
      FactoryGirl.create(:post, title: "Titel 2", body: "Dit is nog een tekst")
      visit nieuws_path
    end
    
    it { should have_selector('title', text: 'Nieuws') }
    it { should have_selector('h1', text: 'Nieuws') }
    
    it "should list each post" do
      Post.all.each do |post|
        page.should have_selector('h2', text: post.title)
      end
    end
  end
end
