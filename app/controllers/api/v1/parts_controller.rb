module Api
  module V1
      class PartsController < ApplicationController

        def index
          render json: Part.all
        end

      end
  end
end
