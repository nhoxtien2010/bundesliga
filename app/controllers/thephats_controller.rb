class ThephatsController < ApplicationController
  before_action :set_thephat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @thephats = Thephat.all
    respond_with(@thephats)
  end

  def show
    respond_with(@thephat)
  end

  def new
    @thephat = Thephat.new
    respond_with(@thephat)
  end

  def edit
  end

  def create
    @thephat = Thephat.new(thephat_params)
    @thephat.save
    respond_with(@thephat)
  end

  def update
    @thephat.update(thephat_params)
    respond_with(@thephat)
  end

  def destroy
    @thephat.destroy
    respond_with(@thephat)
  end

  private
    def set_thephat
      @thephat = Thephat.find(params[:id])
    end

    def thephat_params
      params.require(:thephat).permit(:loaithe, :ghichu)
    end
end
