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
        fill_in "Teaser", with: "Dit is de teaser van de post"
        fill_in "Bericht",   with: "Dit is de tekst van de post"
        fill_in "Publiceerdatum", with: Time.now
      end
      
      it "should create a post" do
        expect { click_button submit }.to change(Post, :count).by(1)
      end
    end
  end
  
  describe "edit page" do
    let(:user) { FactoryGirl.create(:post) }
    before { visit edit_admin_post_path }
    
    describe "page" do
      it { should have_selector('h1', text: "Bewerk nieuwsbericht") }
      it { should have_selector('title', text: "Bewerk nieuwsbericht") }
    end
    
    describe "with invalid information" do
      before { click_button "Bewaar" }
      
      it { should have_content('fout(en)') }
    end
    
    describe "with valid information" do
      let(:new_title)   { "New Title" }
      let(:new_body)    { "New body" }
      let(:new_teaser)  { "New teaser" }
      let(:new_publish_date) { 2.days.ago }
      before do
        fill_in "Titel", with: new_title
        fill_in "Bericht", with: new_body
        fill_in "Teaser", with: new_teaser
        fill_in "Publiceerdatum", with: new_publish_date
        click_button "Bewaren"
      end
      
      it { should have_selector('title', text: new_title) }
      it { should have_selector('div.alert.alert-success') }
      specify { post.reload.title.should == new_title }
      specify { post.reload.body.should == new_body }
      specify { post.reload.teaser.should == new_teaser }
      specify { post.reload.publish_date.should == new_publish_date }
    end
  end
  
  describe "index" do
    before do
      FactoryGirl.create(:post, title: "Titel 1", body: "Dit is een tekst", teaser: "Dit is de eerste teaser", publish_date: Time.now)
      FactoryGirl.create(:post, title: "Titel 2", body: "Dit is nog een tekst", teaser: "Dit is de tweede teaser", publish_date: 2.days.ago)
      visit admin_posts_path
    end
    
    it { should have_selector('title', text: 'Nieuwsberichten') }
    it { should have_selector('h1', text: 'Nieuwsberichten') }
    
    it "should list each post" do
      Post.all.each do |post|
        page.should have_selector('a', text: post.title)
      end
    end
  end
end
