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

class Post < ActiveRecord::Base
  attr_accessible :title, :body, :teaser, :publish_date
  
  validates :title, presence: true
  validates :body, presence: true
  validates :teaser, presence: true
  validates :publish_date, presence: true
end
