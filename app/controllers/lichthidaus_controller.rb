class LichthidausController < ApplicationController
  before_action :set_lichthidau, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lichthidaus = Lichthidau.all
    respond_with(@lichthidaus)
  end

  def show
    respond_with(@lichthidau)
  end

  def new
    @lichthidau = Lichthidau.new
    respond_with(@lichthidau)
  end

  def edit
  end

  def create
    @lichthidau = Lichthidau.new(lichthidau_params)
    @lichthidau.save
    respond_with(@lichthidau)
  end

  def update
    @lichthidau.update(lichthidau_params)
    respond_with(@lichthidau)
  end

  def destroy
    @lichthidau.destroy
    respond_with(@lichthidau)
  end

  private
    def set_lichthidau
      @lichthidau = Lichthidau.find(params[:id])
    end

    def lichthidau_params
      params.require(:lichthidau).permit(:muagiai, :vongdau_id)
    end
end
