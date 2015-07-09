class HuanluyenviensController < ApplicationController
  before_action :set_huanluyenvien, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @huanluyenviens = Huanluyenvien.all
    respond_with(@huanluyenviens)
  end

  def show
    respond_with(@huanluyenvien)
  end

  def new
    @huanluyenvien = Huanluyenvien.new
    respond_with(@huanluyenvien)
  end

  def edit
  end

  def create
    @huanluyenvien = Huanluyenvien.new(huanluyenvien_params)
    @huanluyenvien.save
    respond_with(@huanluyenvien)
  end

  def update
    @huanluyenvien.update(huanluyenvien_params)
    respond_with(@huanluyenvien)
  end

  def destroy
    @huanluyenvien.destroy
    respond_with(@huanluyenvien)
  end

  private
    def set_huanluyenvien
      @huanluyenvien = Huanluyenvien.find(params[:id])
    end

    def huanluyenvien_params
      params.require(:huanluyenvien).permit(:ten, :tuoi, :quoctich)
    end
end
