class ChitiettrandausController < ApplicationController
  before_action :set_chitiettrandau, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chitiettrandaus = Chitiettrandau.all
    respond_with(@chitiettrandaus)
  end

  def show
    respond_with(@chitiettrandau)
  end

  def new
    @chitiettrandau = Chitiettrandau.new
    respond_with(@chitiettrandau)
  end

  def edit
  end

  def create
    @chitiettrandau = Chitiettrandau.new(chitiettrandau_params)
    @chitiettrandau.save
    respond_with(@chitiettrandau)
  end

  def update
    @chitiettrandau.update(chitiettrandau_params)
    respond_with(@chitiettrandau)
  end

  def destroy
    @chitiettrandau.destroy
    respond_with(@chitiettrandau)
  end

  private
    def set_chitiettrandau
      @chitiettrandau = Chitiettrandau.find(params[:id])
    end

    def chitiettrandau_params
      params.require(:chitiettrandau).permit(:trandau_id)
    end
end
