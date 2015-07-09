class ChitietbxhsController < ApplicationController
  before_action :set_chitietbxh, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chitietbxhs = Chitietbxh.all
    respond_with(@chitietbxhs)
  end

  def show
    respond_with(@chitietbxh)
  end

  def new
    @chitietbxh = Chitietbxh.new
    respond_with(@chitietbxh)
  end

  def edit
  end

  def create
    @chitietbxh = Chitietbxh.new(chitietbxh_params)
    @chitietbxh.save
    respond_with(@chitietbxh)
  end

  def update
    @chitietbxh.update(chitietbxh_params)
    respond_with(@chitietbxh)
  end

  def destroy
    @chitietbxh.destroy
    respond_with(@chitietbxh)
  end

  private
    def set_chitietbxh
      @chitietbxh = Chitietbxh.find(params[:id])
    end

    def chitietbxh_params
      params.require(:chitietbxh).permit(:thuhang, :sotranthidau, :diem, :hieuso, :tongsobanthang, :sotranthang, :sotranghoa, :sotrangthua, :bangxephang_id, :doibong_id, :lenxuonghang_id)
    end
end
