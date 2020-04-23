class ShoesController < ApplicationController

    def index 
        @shoes = Shoe.all
        render json: @shoes
    end

    def show
        @shoe = Shoe.find(params[:id])
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
        shoe = Shoe.find(params[:id])
        shoe.update(
            style: (params[:style]),
            color: (params[:color]),
            size: (params[:size])
        )
        render json: shoe
    end

    def destroy
        shoe = Shoe.find(params[:id])
        shoe.update(
            style: (params[:style]),
            color: (params[:color]),
            size: (params[:size])
        )
        render json: {message: "Shoe was sucesffuly deleted" }
    end


    # private 
    # def find_shoe_by_id
    #     shoe = Shoe.find(params[:id])
    # end
end
