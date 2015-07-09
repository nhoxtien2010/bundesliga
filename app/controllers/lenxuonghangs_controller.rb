class LenxuonghangsController < ApplicationController
  before_action :set_lenxuonghang, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lenxuonghangs = Lenxuonghang.all
    respond_with(@lenxuonghangs)
  end

  def show
    respond_with(@lenxuonghang)
  end

  def new
    @lenxuonghang = Lenxuonghang.new
    respond_with(@lenxuonghang)
  end

  def edit
  end

  def create
    @lenxuonghang = Lenxuonghang.new(lenxuonghang_params)
    @lenxuonghang.save
    respond_with(@lenxuonghang)
  end

  def update
    @lenxuonghang.update(lenxuonghang_params)
    respond_with(@lenxuonghang)
  end

  def destroy
    @lenxuonghang.destroy
    respond_with(@lenxuonghang)
  end

  private
    def set_lenxuonghang
      @lenxuonghang = Lenxuonghang.find(params[:id])
    end

    def lenxuonghang_params
      params.require(:lenxuonghang).permit(:ten, :thongtin)
    end
end
