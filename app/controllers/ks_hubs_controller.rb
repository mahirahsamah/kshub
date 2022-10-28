class KsHubsController < ApplicationController
  before_action :set_ks_hub, only: %i[ show edit update destroy ]

  # GET /ks_hubs or /ks_hubs.json
  def index
    @ks_hubs = KsHub.all
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  # GET /ks_hubs/1 or /ks_hubs/1.json
  def show
  end

  # GET /ks_hubs/new
  def new
    @ks_hub = KsHub.new
  end

  # GET /ks_hubs/1/edit
  def edit
  end

  # POST /ks_hubs or /ks_hubs.json
  def create
    @ks_hub = KsHub.new(ks_hub_params)

    respond_to do |format|
      if @ks_hub.save
        format.html { redirect_to ks_hub_url(@ks_hub), notice: "Ks hub was successfully created." }
        format.json { render :show, status: :created, location: @ks_hub }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ks_hub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ks_hubs/1 or /ks_hubs/1.json
  def update
    respond_to do |format|
      if @ks_hub.update(ks_hub_params)
        format.html { redirect_to ks_hub_url(@ks_hub), notice: "Ks hub was successfully updated." }
        format.json { render :show, status: :ok, location: @ks_hub }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ks_hub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ks_hubs/1 or /ks_hubs/1.json
  def destroy
    @ks_hub.destroy

    respond_to do |format|
      format.html { redirect_to ks_hubs_url, notice: "Ks hub was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ks_hub
      @ks_hub = KsHub.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ks_hub_params
      params.require(:ks_hub).permit(:title)
    end
end
