class BanthangsController < ApplicationController
  before_action :set_banthang, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @banthangs = Banthang.all
    respond_with(@banthangs)
  end

  def show
    respond_with(@banthang)
  end

  def new
    @banthang = Banthang.new
    respond_with(@banthang)
  end

  def edit
  end

  def create
    @banthang = Banthang.new(banthang_params)
    @banthang.save
    respond_with(@banthang)
  end

  def update
    @banthang.update(banthang_params)
    respond_with(@banthang)
  end

  def destroy
    @banthang.destroy
    respond_with(@banthang)
  end

  private
    def set_banthang
      @banthang = Banthang.find(params[:id])
    end

    def banthang_params
      params.require(:banthang).permit(:thoigian, :cauthu_id, :chitiettrandau_id)
    end
end
