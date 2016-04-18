class BlogEmailsController < ApplicationController
  def idex

  end

  def new
    @blog_email = BlogEmail.new
  end

  def create
    @blog_email = BlogEmail.new(blog_email_params)

    if @blog_email.save
      redirect_to root_path

    else
      render 'new'
    end
  end

  private
  def blog_email_params
    params.require(:blog_email).permit(:display_name, :email)
  end
end
