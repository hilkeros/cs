class Admin::PostsController < InheritedResources::Base
  
  def index
    @posts = Post.all( :order => "publish_date DESC")
  end
end
