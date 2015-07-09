class CauthusController < ApplicationController
  before_action :set_cauthu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cauthus = Cauthu.all
    respond_with(@cauthus)
  end

  def show
    respond_with(@cauthu)
  end

  def new
    @cauthu = Cauthu.new
    respond_with(@cauthu)
  end

  def edit
  end

  def create
    @cauthu = Cauthu.new(cauthu_params)
    @cauthu.save
    respond_with(@cauthu)
  end

  def update
    @cauthu.update(cauthu_params)
    respond_with(@cauthu)
  end

  def destroy
    @cauthu.destroy
    respond_with(@cauthu)
  end

  private
    def set_cauthu
      @cauthu = Cauthu.find(params[:id])
    end

    def cauthu_params
      params.require(:cauthu).permit(:ten, :tuoi, :quoctich, :chieucao, :cannang, :vitri_id, :doibong_id, :hinhanh)
    end
end
