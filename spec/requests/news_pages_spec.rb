require 'spec_helper'

describe "NewsPages" do
  
  subject { page }
  
  describe "show news item" do
    let(:post) { FactoryGirl.create(:post) }
    before { visit admin_posts_path(post) }
    
    it { should have_selector('h1', text: post.title) }
    
  end
end
