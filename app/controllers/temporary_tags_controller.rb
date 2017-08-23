class TemporaryTagsController < ApplicationController
  before_action :set_temporary_tag, only: [:show, :edit, :update, :destroy]

  # GET /temporary_tags
  # GET /temporary_tags.json
  def index
    @temporary_tags = TemporaryTag.all
  end

  # GET /temporary_tags/1
  # GET /temporary_tags/1.json
  def show
  end

  # GET /temporary_tags/new
  def new
    @temporary_tag = TemporaryTag.new
  end

  # GET /temporary_tags/1/edit
  def edit
  end

  # POST /temporary_tags
  # POST /temporary_tags.json
  def create
    @temporary_tag = TemporaryTag.new(temporary_tag_params)

    respond_to do |format|
      if @temporary_tag.save
        format.html { redirect_to @temporary_tag, notice: 'Temporary tag was successfully created.' }
        format.json { render :show, status: :created, location: @temporary_tag }
      else
        format.html { render :new }
        format.json { render json: @temporary_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temporary_tags/1
  # PATCH/PUT /temporary_tags/1.json
  def update
    respond_to do |format|
      if @temporary_tag.update(temporary_tag_params)
        format.html { redirect_to @temporary_tag, notice: 'Temporary tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @temporary_tag }
      else
        format.html { render :edit }
        format.json { render json: @temporary_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporary_tags/1
  # DELETE /temporary_tags/1.json
  def destroy
    @temporary_tag.destroy
    respond_to do |format|
      format.html { redirect_to temporary_tags_url, notice: 'Temporary tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temporary_tag
      @temporary_tag = TemporaryTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temporary_tag_params
      params.require(:temporary_tag).permit(:customer, :lien_fee, :title_fee, :tax_fee, :temp_tag, :special_plates, :online_fee, :mva_total, :service_fee, :total_paid)
    end
end
