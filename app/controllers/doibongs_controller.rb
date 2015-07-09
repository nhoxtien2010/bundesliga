class DoibongsController < ApplicationController
  before_action :set_doibong, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @doibongs = Doibong.all
    respond_with(@doibongs)
  end

  def show
    respond_with(@doibong)
  end

  def new
    @doibong = Doibong.new
    respond_with(@doibong)
  end

  def edit
  end

  def create
    @doibong = Doibong.new(doibong_params)
    @doibong.save
    respond_with(@doibong)
  end

  def update
    @doibong.update(doibong_params)
    respond_with(@doibong)
  end

  def destroy
    @doibong.destroy
    respond_with(@doibong)
  end

  private
    def set_doibong
      @doibong = Doibong.find(params[:id])
    end

    def doibong_params
      params.require(:doibong).permit(:ten, :diachi, :dienthoai, :fax, :website, :facebook, :ngaytl, :mauao, :bacsy, :nguoidaidientruyenthong, :huanluyenvien_id, :logo)
    end
end
