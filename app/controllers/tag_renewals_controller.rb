class TagRenewalsController < ApplicationController
  before_action :set_tag_renewal, only: [:show, :edit, :update, :destroy]

  # GET /tag_renewals
  # GET /tag_renewals.json
  def index
    @tag_renewals = TagRenewal.all
  end

  # GET /tag_renewals/1
  # GET /tag_renewals/1.json
  def show
  end

  # GET /tag_renewals/new
  def new
    @tag_renewal = TagRenewal.new
  end

  # GET /tag_renewals/1/edit
  def edit
  end

  # POST /tag_renewals
  # POST /tag_renewals.json
  def create
    @tag_renewal = TagRenewal.new(tag_renewal_params)

    respond_to do |format|
      if @tag_renewal.save
        format.html { redirect_to @tag_renewal, notice: 'Tag renewal was successfully created.' }
        format.json { render :show, status: :created, location: @tag_renewal }
      else
        format.html { render :new }
        format.json { render json: @tag_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_renewals/1
  # PATCH/PUT /tag_renewals/1.json
  def update
    respond_to do |format|
      if @tag_renewal.update(tag_renewal_params)
        format.html { redirect_to @tag_renewal, notice: 'Tag renewal was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_renewal }
      else
        format.html { render :edit }
        format.json { render json: @tag_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_renewals/1
  # DELETE /tag_renewals/1.json
  def destroy
    @tag_renewal.destroy
    respond_to do |format|
      format.html { redirect_to tag_renewals_url, notice: 'Tag renewal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_renewal
      @tag_renewal = TagRenewal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_renewal_params
      params.require(:tag_renewal).permit(:customer, :registration, :reg_surcharge, :special_plates, :mva_fee, :temp_registration, :admin_flag_fee, :online_fee, :mva_fee, :service_fee, :paid_total)
    end
end
