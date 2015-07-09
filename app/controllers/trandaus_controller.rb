class TrandausController < ApplicationController
  before_action :set_trandau, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trandaus = Trandau.all
    respond_with(@trandaus)
  end

  def show
    respond_with(@trandau)
  end

  def new
    @trandau = Trandau.new
    respond_with(@trandau)
  end

  def edit
  end

  def create
    @trandau = Trandau.new(trandau_params)
    @trandau.save
    respond_with(@trandau)
  end

  def update
    @trandau.update(trandau_params)
    respond_with(@trandau)
  end

  def destroy
    @trandau.destroy
    respond_with(@trandau)
  end

  private
    def set_trandau
      @trandau = Trandau.find(params[:id])
    end

    def trandau_params
      params.require(:trandau).permit(:banthangdoinha, :banthangdoikhach, :doinha_id, :doikhach_id, :thoigian, :vongdau_id, :sanvandong_id)
    end
end
