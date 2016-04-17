
class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  def index
    @blogs = Blog.order('created_at DESC').page(params[:page]).per(10)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to blogs_path

    else
      render 'new'
    end
  end

  def show

  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  def edit

  end

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end
    private

    def blog_params
      params.require(:blog).permit(:title, :entry)
    end

end
