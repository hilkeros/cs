require 'spec_helper'

describe "HomepageItems" do
  
  before do    
    visit root_path
  end
  
  describe "it should show the most recent post" do
    before do
      FactoryGirl.create(:post, title: "Titel 1", body: "Dit is een tekst")
      FactoryGirl.create(:post, title: "Titel 2", body: "Dit is nog een tekst")
    end
    
    it { should have_selector('a', text: 'Titel 2') }
    it { should have_selector('home_news_item', text: 'Titel 2') }
      
  end
end
