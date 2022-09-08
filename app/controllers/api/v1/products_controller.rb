module Api
  module V1
    class ProductsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def index
        @products = Product.all.order("updated_at DESC")
      end

      def show
        @product = Product.find_by(id: params[:id])
      end

      def destroy
        product = Product.find_by(id: params[:id])
        if product.present?
          if product.destroy
            render json: { message: 'Product Deleted Successfully' }, status: :ok
          else
            render json: { error: 'Could Not Delete this product' }, status: :unprocessable_entity
          end
        else
          render json: { message: 'Product Not Found' }, status: :unprocessable_entity
        end
      end

      def search
        if params[:search].present?
          @products = Product.search(params[:search]).order("updated_at DESC")
        else
          @products = Product.all.order('updated_at DESC')
        end
      end

      def filter_category
        if params[:category].present?
          @products = Product.where(category: params[:category]).order("updated_at DESC")
        else
          @products = Product.all.order('updated_at DESC')
        end
      end

      def filter_year
        @products = Product.where("cast(strftime('%Y', created_at) as int) = ?", params[:year].to_i)
      end

    end
  end
end
