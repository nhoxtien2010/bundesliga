class PhamloisController < ApplicationController
  before_action :set_phamloi, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @phamlois = Phamloi.all
    respond_with(@phamlois)
  end

  def show
    respond_with(@phamloi)
  end

  def new
    @phamloi = Phamloi.new
    respond_with(@phamloi)
  end

  def edit
  end

  def create
    @phamloi = Phamloi.new(phamloi_params)
    @phamloi.save
    respond_with(@phamloi)
  end

  def update
    @phamloi.update(phamloi_params)
    respond_with(@phamloi)
  end

  def destroy
    @phamloi.destroy
    respond_with(@phamloi)
  end

  private
    def set_phamloi
      @phamloi = Phamloi.find(params[:id])
    end

    def phamloi_params
      params.require(:phamloi).permit(:thoigian, :thephat_id, :cauthu_id, :chitiettrandau_id)
    end
end
