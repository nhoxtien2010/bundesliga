class LoaimediaController < ApplicationController
  before_action :set_loaimedium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @loaimedia = Loaimedium.all
    respond_with(@loaimedia)
  end

  def show
    respond_with(@loaimedium)
  end

  def new
    @loaimedium = Loaimedium.new
    respond_with(@loaimedium)
  end

  def edit
  end

  def create
    @loaimedium = Loaimedium.new(loaimedium_params)
    @loaimedium.save
    respond_with(@loaimedium)
  end

  def update
    @loaimedium.update(loaimedium_params)
    respond_with(@loaimedium)
  end

  def destroy
    @loaimedium.destroy
    respond_with(@loaimedium)
  end

  private
    def set_loaimedium
      @loaimedium = Loaimedium.find(params[:id])
    end

    def loaimedium_params
      params.require(:loaimedium).permit(:ten)
    end
end
