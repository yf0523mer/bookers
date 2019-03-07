class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def Bookers
  end

  def index
    @post = Post.new
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

   def create
    post = Post.new(post_params)
    if post.save
      flash[:notice] = "Book was successfully created."
      redirect_to post_path(post.id)
    else
      render action: :new
    end
   end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to post_path(post.id)
    else
      render action: :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to posts_path
  end

  private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
