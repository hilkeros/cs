require 'spec_helper'

describe "NewsPages" do
  
  subject { page }
  
  describe "show news item" do
    let(:post) { FactoryGirl.create(:post) }
    before { visit admin_posts_path(post) }
    
    it { should have_selector('h1', text: post.title) }
    
  end
  
  describe "make new news post" do
    
    before { visit new_admin_post_path }
    
    let(:submit) { "Opslaan"}
    
    describe "with invalid information" do
      it "should not create a post" do
        expect { click_button submit }.not_to change(Post, :count)
      end
    end
    
    describe "with valid information" do
      before do
        fill_in "Titel",  with: "Dit is een nieuwe post"
        fill_in "Bericht",   with: "Dit is de tekst van de post"
      end
      
      it "should create a post" do
        expect { click_button submit }.to change(Post, :count).by(1)
      end
    end
  end
end
