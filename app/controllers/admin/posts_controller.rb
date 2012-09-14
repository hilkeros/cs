class Admin::PostsController < InheritedResources::Base
  def index
    @posts = Post.all( :order => "created_at DESC")
  end
end
