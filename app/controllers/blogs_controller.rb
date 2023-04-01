class BlogsController < ApplicationController

  #すべてのデータを取得しblogs変数に格納
  def index
    @blogs = Blog.all
    @all_blogs = @blogs.paginate(page: params[:page], per_page: 5)
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog =Blog.find(params[:id])
    @office = Office.find_by(id: @blog.office_id)
  end

  def create
    @blog = Blog.create(blog_parameter)
    @office = Office.find_by(id: @blog.office_id)
    redirect_to blogs_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice:"削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice:"編集しました"
    else
      render 'edit'
    end
  end

  private

  def blog_parameter
    params.require(:blog).permit(:start_time, :division, :time, :office_id)
  end
end
