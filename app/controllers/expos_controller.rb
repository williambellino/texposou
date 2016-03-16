class ExposController < ApplicationController
  before_action :set_expo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /expos
  # GET /expos.json
  def index
    @expos = Expo.all.order('created_at DESC')
  end

  # GET /expos/1
  # GET /expos/1.json
  def show
  end

  # GET /expos/new
  def new
    @expo = Expo.new
  end

  # GET /expos/1/edit
  def edit
  end

  # POST /expos
  # POST /expos.json
  def create
    @expo = Expo.new(expo_params)
    @expo.user = current_user

    respond_to do |format|
      if @expo.save
        format.html { redirect_to @expo, notice: 'Expo was successfully created.' }
        format.json { render :show, status: :created, location: @expo }
      else
        format.html { render :new }
        format.json { render json: @expo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expos/1
  # PATCH/PUT /expos/1.json
  def update
    respond_to do |format|
      if @expo.update(expo_params)
        format.html { redirect_to @expo, notice: 'Expo was successfully updated.' }
        format.json { render :show, status: :ok, location: @expo }
      else
        format.html { render :edit }
        format.json { render json: @expo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expos/1
  # DELETE /expos/1.json
  def destroy
    @expo.destroy
    respond_to do |format|
      format.html { redirect_to expos_url, notice: 'Expo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expo
      @expo = Expo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expo_params
      params.require(:expo).permit(:name, :content, :opening_date, :closing_date, :capacity, :is_handi, :surface, :address_city, :address_street, :address_cp, :address_infos)
    end
end
