module Api
  module V1
    class BusinessesController < ApplicationController

      def create 
        @business = Business.new(business_params)
        if @business.save 
          render status: 201, json: {
            business: @business
          }
        else
          render status: 406, json: {
            error: @business.errors.full_messages
          } 
        end 
      end
      
      private 
    
      def business_params 
        params.require(:business).permit(:name, :website, :us_state)
      end 
    end
  end
end 
