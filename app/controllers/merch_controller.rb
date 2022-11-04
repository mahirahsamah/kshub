class MerchController < ApplicationController
    before_action :set_merch, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, except: [:show, :index]
    def index
        @merches = Merch.all
    end

    def show
    end

    def new
        @merch = Merch.new
    end

    def edit
    end

    def create
        @merch = Merch.new(merch_params)
        respond_to do |format|
            if @merch.save
                format.html { redirect_to merch_url(@merch), notice: "Merchandise was successfully created." }
                format.json { render :show, status: :created, location: @merch }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @merch.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @merch.update(merch_params)
              format.html { redirect_to merch_url(@merch), notice: "Merchandise was successfully updated." }
              format.json { render :show, status: :ok, location: @merch }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @merch.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @merch.destroy

        respond_to do |format|
            format.html { redirect_to merch_url, notice: "Merchandise was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
        def set_merch
            @merch = Merch.find(params[:id])
        end

        def merch_params
            params.require(:merch).permit(:name, :price, :link)
        end
end