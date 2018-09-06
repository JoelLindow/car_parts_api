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
        x = Part.new(strong_params)
        if x.save
          render status: 204, json: {message: "#{x.name} saved to Database"}
        else
          render status: 400, json: {message: x.errors}
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
        params.require(:part).permit(:name, :description, :oem, :price)
      end

    end
  end
end
