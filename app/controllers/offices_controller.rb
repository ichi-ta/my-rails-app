class OfficesController < ApplicationController

  def index
    @offices = Office.all
  end

  #事業所の詳細ページ
  def show
    @office = Office.find(params[:id])
    @all_blogs = @office.blogs.paginate(page: params[:page])
  end

  #事業所の登録ページ
  def new
    @office = Office.new
  end

  def create
    Office.create(office_parameter)
    redirect_to blogs_path
  end

  #事業所の削除ページ
  def destroy
    Office.find(params[:id]).destroy
    flash[:success] = "削除されました"
    redirect_to offices_path
  end

  def office_parameter
    params.require(:office).permit(:name, :phone_number, :address)
  end
end
