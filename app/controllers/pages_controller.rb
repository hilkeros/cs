class PagesController < ApplicationController
  def home
    @posts = Post.all( :order => "created_at DESC", :limit => "2")
  end

  def contact
    
  end

end
