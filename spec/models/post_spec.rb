# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Post do
  
  before { @post = Post.new(title: "Dit is de titel", body: "Dit is het nieuwsbericht", teaser: "Dit is de teaser", publish_date: Time.now) }
  
  subject { @post }
  
  it { should respond_to(:title) }
  it { should respond_to(:body) }
  it { should respond_to(:teaser) }
  it { should respond_to(:publish_date) }
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @post.title = " " }
    it { should_not be_valid }
  end
  
  describe "when body is not present" do
    before { @post.body = " " }
    it { should_not be_valid }
  end
  
  describe "when teaser is not present" do
    before { @post.teaser = " " }
    it { should_not be_valid }
  end
  
  describe "when publish date is not present" do
    before { @post.publish_date = " " }
    it { should_not be_valid }
  end
end
