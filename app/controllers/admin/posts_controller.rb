class Admin::PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to admin_post_path(@post)
      flash[:success] = "Post was created."
    else
      render 'new'
      flash[:error] = "The following errors occured."
    end
  end

  def edit
  end

  def update

    if @post.update(post_params)
      redirect_to admin_post_path(@post)
      flash[:success] = "Post was updated."
    else
      render 'edit'
      flash[:error] = "The following errors occured."
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
