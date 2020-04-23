class ShoesController < ApplicationController

    before_action :find_shoe_by_id, only: [:show, :update, :destroy]

    def index 
        @shoes = Shoe.all
        render json: @shoes
    end

    def show
        render json: @shoe
    end

    def create 
        @shoes = Shoe.create(
            style: (params[:style]),
            color: (params[:color]),
            size: (params[:size])
        )
        render json: @shoes
    end

    def update 
        shoe.update(
            style: (params[:style]),
            color: (params[:color]),
            size: (params[:size])
        )
        render json: shoe
    end

    def destroy
        @shoe.destroy
        render json: {message: "Shoe was sucesffuly deleted" }
    end


    private 
    def find_shoe_by_id
        @shoe = Shoe.find(params[:id])
    end
end
