class TitlesController < ApplicationController
  before_action :set_receipt, only: [:show, :edit, :update, :destroy]

  # GET /titles
  # GET /titles.json
  def index
    @titles = Title.all
  end

  # GET /titles/1
  # GET /titles/1.json
  def show
  end

  # GET /titles/new
  def new
    @titles = Title.new
  end

  # GET /titles/1/edit
  def edit
  end

  # POST /titles
  # POST /titles.json
  def create
    @titles = Title.new(receipt_params)

    respond_to do |format|
      if @titles.save
        format.html { redirect_to @titles, notice: 'Title was successfully created.' }
        format.json { render :show, status: :created, location: @titles }
      else
        format.html { render :new }
        format.json { render json: @titles.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titles/1
  # PATCH/PUT /titles/1.json
  def update
    respond_to do |format|
      if @titles.update(receipt_params)
        format.html { redirect_to @titles, notice: 'Title was successfully updated.' }
        format.json { render :show, status: :ok, location: @titles }
      else
        format.html { render :edit }
        format.json { render json: @titles.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    @titles.destroy
    respond_to do |format|
      format.html { redirect_to titles_url, notice: 'Title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt
      @titles = Title.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_params
      params.require(:receipt).permit(:customer, :title_number, :lien_fees, :title_fee, :tax_fee, :online_fee, :mva_total, :service_fee, :total_paid)
    end
end
