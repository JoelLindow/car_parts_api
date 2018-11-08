module Api
  module V1
    class PartsController < ApplicationController

      def index
        render json: Part.all
      end

      def show
        render json: Part.find(params[:id])
      end

      def create
        x = Part.create_part(strong_params)
        if x[:validity]
          render json: {message: "#{x[:message]}"}
        else
          render json: {message: "#{x[:message]}"}
        end
      end

      # CUSTOM PARTS METHODS
      def find_show
        # Will potentially present more than 1 item
        render json: Part.find_by(find_params)
      end

      private

      def find_params
        params.permit(:id, :name)
      end

      def strong_params
        params.permit(:name, :description, :oem, :price, :year, :car_model, :car_make)
      end

    end
  end
end
