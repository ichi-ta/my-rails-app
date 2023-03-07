class OfficesController < ApplicationController
  #事業所の詳細ページ
  def show
    @office = Office.find(params[:id])
  end

  #事業所の登録
  def new
    @office = Office.new
  end

  def create
    Office.create(office_parameter)
    redirect_to blogs_path
  end

  private

  def office_parameter
    params.require(:office).permit(:name, :phone_number, :address)
  end
end
