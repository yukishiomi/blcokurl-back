 module Api
    module V1
      class UrlsController < ApplicationController
        def index
          url = Url.all
          render json: { status: 'SUCCESS', message: 'Loaded posts', data: url }
        end

        def create
          url = Url.new(post_params)
          if url.save
            render json: { status: 'SUCCESS', data: url }
          else
            render json: { status: 'ERROR', data: url.errors }
          end
        end

        private
        
        def post_params
          params.require(:url).permit(:name)
        end
      end
    end
  end

