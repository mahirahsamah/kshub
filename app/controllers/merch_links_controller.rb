class MerchLinksController < ApplicationController
  before_action :set_merch_link, only: %i[ show edit update destroy ]

  # GET /merch_links or /merch_links.json
  def index
    @merch_links = MerchLink.all
  end

  # GET /merch_links/1 or /merch_links/1.json
  def show
  end

  # GET /merch_links/new
  def new
    @merch_link = MerchLink.new
  end

  # GET /merch_links/1/edit
  def edit
  end

  # POST /merch_links or /merch_links.json
  def create
    @merch_link = MerchLink.new(merch_link_params)

    respond_to do |format|
      if @merch_link.save
        format.html { redirect_to merch_link_url(@merch_link), notice: "Merch link was successfully created." }
        format.json { render :show, status: :created, location: @merch_link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @merch_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merch_links/1 or /merch_links/1.json
  def update
    respond_to do |format|
      if @merch_link.update(merch_link_params)
        format.html { redirect_to merch_link_url(@merch_link), notice: "Merch link was successfully updated." }
        format.json { render :show, status: :ok, location: @merch_link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @merch_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merch_links/1 or /merch_links/1.json
  def destroy
    @merch_link.destroy

    respond_to do |format|
      format.html { redirect_to merch_links_url, notice: "Merch link was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merch_link
      @merch_link = MerchLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merch_link_params
      params.require(:merch_link).permit(:LinkID, :LinkDescription, :UIN)
    end
end
