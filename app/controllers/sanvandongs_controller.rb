class SanvandongsController < ApplicationController
  before_action :set_sanvandong, only: [:show, :edit, :update, :destroy]

  # GET /sanvandongs
  # GET /sanvandongs.json
  def index
    @sanvandongs = Sanvandong.all
  end

  # GET /sanvandongs/1
  # GET /sanvandongs/1.json
  def show
  end

  # GET /sanvandongs/new
  def new
    @sanvandong = Sanvandong.new
  end

  # GET /sanvandongs/1/edit
  def edit
  end

  # POST /sanvandongs
  # POST /sanvandongs.json
  def create
    @sanvandong = Sanvandong.new(sanvandong_params)

    respond_to do |format|
      if @sanvandong.save
        format.html { redirect_to @sanvandong, notice: 'Sanvandong was successfully created.' }
        format.json { render :show, status: :created, location: @sanvandong }
      else
        format.html { render :new }
        format.json { render json: @sanvandong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sanvandongs/1
  # PATCH/PUT /sanvandongs/1.json
  def update
    respond_to do |format|
      if @sanvandong.update(sanvandong_params)
        format.html { redirect_to @sanvandong, notice: 'Sanvandong was successfully updated.' }
        format.json { render :show, status: :ok, location: @sanvandong }
      else
        format.html { render :edit }
        format.json { render json: @sanvandong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanvandongs/1
  # DELETE /sanvandongs/1.json
  def destroy
    @sanvandong.destroy
    respond_to do |format|
      format.html { redirect_to sanvandongs_url, notice: 'Sanvandong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanvandong
      @sanvandong = Sanvandong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sanvandong_params
      params.require(:sanvandong).permit(:soghe, :diachi, :doibong_id, :hinhanh, :ten, :hinanh1, :hinhanh2, :thongtin, :chitietthongtin, :thanhlap, :ve)
    end
end
