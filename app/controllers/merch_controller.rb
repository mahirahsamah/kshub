class MerchController < ApplicationController
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
    end

    def update
    end

    def destroy
    end

    private
        def merch_params
            params.require(:merch).permit(:name, :price, :link)
        end
end