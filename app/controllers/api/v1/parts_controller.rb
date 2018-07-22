module Api
  module V1
      class PartsController < ApplicationController

        def index
          render json: Part.all
        end

        def show
          render json: Part.find(params[:id])
        end


        # CUSTOM PARTS METHODS

        def find_show
          # binding.pry
          render json: Part.find_by(part_params)
        end


        private

        def part_params
          params.permit(:id, :name)
        end

      end
  end
end
