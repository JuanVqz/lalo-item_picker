module Lalo
  module ItemPicker
    class CollectionsController < ApplicationController
      def index
        @collections = Collection.includes(:line_items).all
      end

      def show
        @collection = Collection.includes(:line_items).find(params[:id])
      end

      def new
        @collection = Collection.new
        @collection.line_items.build
      end

      def create
        @collection = Collection.new(collection_params)

        respond_to do |format|
          if @collection.save
            format.html { redirect_to collection_path(@collection), notice: "Collection was successfully created." }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
      end

      private

      def collection_params
        params.require(:collection)
          .permit(:comment, line_items_attributes: [:id, :quantity, :_destroy])
      end
    end
  end
end
