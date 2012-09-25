class PostsController < ApplicationController
  
  def index
    @posts = Post.all( :order => "publish_date DESC")
  end

end
