class BangxephangsController < ApplicationController
  before_action :set_bangxephang, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bangxephangs = Bangxephang.all
    respond_with(@bangxephangs)
  end

  def show
    respond_with(@bangxephang)
  end

  def new
    @bangxephang = Bangxephang.new
    respond_with(@bangxephang)
  end

  def edit
  end

  def create
    @bangxephang = Bangxephang.new(bangxephang_params)
    @bangxephang.save
    respond_with(@bangxephang)
  end

  def update
    @bangxephang.update(bangxephang_params)
    respond_with(@bangxephang)
  end

  def destroy
    @bangxephang.destroy
    respond_with(@bangxephang)
  end

  private
    def set_bangxephang
      @bangxephang = Bangxephang.find(params[:id])
    end

    def bangxephang_params
      params.require(:bangxephang).permit(:vondau_id)
    end
end
