class BaivietsController < ApplicationController
  before_action :set_baiviet, only: [:show, :edit, :update, :destroy]

  # GET /baiviets
  # GET /baiviets.json
  def index
    @baiviets = Baiviet.all
  end

  # GET /baiviets/1
  # GET /baiviets/1.json
  def show
  end

  # GET /baiviets/new
  def new
    @baiviet = Baiviet.new
  end

  # GET /baiviets/1/edit
  def edit
  end

  # POST /baiviets
  # POST /baiviets.json
  def create
    @baiviet = Baiviet.new(baiviet_params)

    respond_to do |format|
      if @baiviet.save
        format.html { redirect_to @baiviet, notice: 'Baiviet was successfully created.' }
        format.json { render :show, status: :created, location: @baiviet }
      else
        format.html { render :new }
        format.json { render json: @baiviet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baiviets/1
  # PATCH/PUT /baiviets/1.json
  def update
    respond_to do |format|
      if @baiviet.update(baiviet_params)
        format.html { redirect_to @baiviet, notice: 'Baiviet was successfully updated.' }
        format.json { render :show, status: :ok, location: @baiviet }
      else
        format.html { render :edit }
        format.json { render json: @baiviet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baiviets/1
  # DELETE /baiviets/1.json
  def destroy
    @baiviet.destroy
    respond_to do |format|
      format.html { redirect_to baiviets_url, notice: 'Baiviet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baiviet
      @baiviet = Baiviet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baiviet_params
      params.require(:baiviet).permit(:tieude, :noidung, :hinhanh, :hinhanh1, :hinhanh2, :doibong_id, :giaidau, :loaibaiviet)
    end
end
