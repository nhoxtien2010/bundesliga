class VongdausController < ApplicationController
  before_action :set_vongdau, only: [:show, :edit, :update, :destroy]

  # GET /vongdaus
  # GET /vongdaus.json
  def index
    @vongdaus = Vongdau.all
  end

  # GET /vongdaus/1
  # GET /vongdaus/1.json
  def show
  end

  # GET /vongdaus/new
  def new
    @vongdau = Vongdau.new
  end

  # GET /vongdaus/1/edit
  def edit
  end

  # POST /vongdaus
  # POST /vongdaus.json
  def create
    @vongdau = Vongdau.new(vongdau_params)

    respond_to do |format|
      if @vongdau.save
        format.html { redirect_to @vongdau, notice: 'Vongdau was successfully created.' }
        format.json { render :show, status: :created, location: @vongdau }
      else
        format.html { render :new }
        format.json { render json: @vongdau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vongdaus/1
  # PATCH/PUT /vongdaus/1.json
  def update
    respond_to do |format|
      if @vongdau.update(vongdau_params)
        format.html { redirect_to @vongdau, notice: 'Vongdau was successfully updated.' }
        format.json { render :show, status: :ok, location: @vongdau }
      else
        format.html { render :edit }
        format.json { render json: @vongdau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vongdaus/1
  # DELETE /vongdaus/1.json
  def destroy
    @vongdau.destroy
    respond_to do |format|
      format.html { redirect_to vongdaus_url, notice: 'Vongdau was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vongdau
      @vongdau = Vongdau.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vongdau_params
      params.require(:vongdau).permit(:stt, :sotrandathidau, :thoigianbatdau, :thoigianketthuc)
    end
end
