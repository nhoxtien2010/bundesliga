class VitrisController < ApplicationController
  before_action :set_vitri, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vitris = Vitri.all
    respond_with(@vitris)
  end

  def show
    respond_with(@vitri)
  end

  def new
    @vitri = Vitri.new
    respond_with(@vitri)
  end

  def edit
  end

  def create
    @vitri = Vitri.new(vitri_params)
    @vitri.save
    respond_with(@vitri)
  end

  def update
    @vitri.update(vitri_params)
    respond_with(@vitri)
  end

  def destroy
    @vitri.destroy
    respond_with(@vitri)
  end

  private
    def set_vitri
      @vitri = Vitri.find(params[:id])
    end

    def vitri_params
      params.require(:vitri).permit(:tenvitri, :phamvihd)
    end
end
