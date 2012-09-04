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
  
  before { @post = Post.new(title: "Dit is de titel", body: "Dit is het nieuwsbericht") }
  
  subject { @post }
  
  it { should respond_to(:title) }
  it { should respond_to(:body) }
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @post.title = " " }
    it { should_not be_valid }
  end
  
  describe "when body is not present" do
    before { @post.body = " " }
    it { should_not be_valid }
  end
end
