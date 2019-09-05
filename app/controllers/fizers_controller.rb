class FizersController < ApplicationController
  before_action :set_fizer, only: [:show, :edit, :update, :destroy]

  # GET /fizers
  # GET /fizers.json
  def index
    @fizers = Fizer.all
  end

  # GET /fizers/1
  # GET /fizers/1.json
  def show
  end

  # GET /fizers/new
  def new
    @fizer = Fizer.new
  end

  # GET /fizers/1/edit
  def edit
  end

  # POST /fizers
  # POST /fizers.json
  def create
    @fizer = Fizer.new(fizer_params)

    respond_to do |format|
      if @fizer.save
        UserNotifierMailer.send_signup_email(@fizer).deliver
        format.html { redirect_to @fizer, notice: 'Fizer was successfully created.' }
        format.json { render :show, status: :created, location: @fizer }
      else
        format.html { render :new }
        format.json { render json: @fizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fizers/1
  # PATCH/PUT /fizers/1.json
  def update
    respond_to do |format|
      if @fizer.update(fizer_params)
        format.html { redirect_to @fizer, notice: 'Fizer was successfully updated.' }
        format.json { render :show, status: :ok, location: @fizer }
      else
        format.html { render :edit }
        format.json { render json: @fizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fizers/1
  # DELETE /fizers/1.json
  def destroy
    @fizer.destroy
    respond_to do |format|
      format.html { redirect_to fizers_url, notice: 'Fizer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fizer
      @fizer = Fizer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fizer_params
      params.require(:fizer).permit(:name, :gender, :mail, :phone)
    end
end
