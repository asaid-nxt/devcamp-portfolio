class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy toggle_status ]
  before_action :feature_posts, only: %i[ show new edit index]
  access all: [:show, :index], admin: :all
  layout 'blog'

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.page(params[:page]).per(5)
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    @page_title = @blog.title
    @seo_keywords = @blog.body
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy!

    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
    end
  end

  def toggle_status
    @blog.draft? ? @blog.published! : @blog.draft!
    redirect_to blog_url(@blog), notice: "Blog has been updated."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.friendly.find(params[:id])
    end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end

def feature_posts
  @main_feature_post = Blog.find(14)
  @second_feature_post = Blog.find(13)
  @third_feature_post = Blog.find(12)
end
