module Spree
  module Admin
    class ProductTaxonsController < ResourceController
      def index
        Rails.logger.debug "INDEX ACTION - ProductTaxonsController"
        Rails.logger.debug "PARAMS: #{params.inspect}"
      end

      def taxons
        Rails.logger.debug "PARAMS: #{params.inspect}"
        puts "PARAMS: #{params.inspect}"
        # List of taxons, beginnning with a virtual taxons for Home, and then all taxons with pts
        @taxons = []
        @taxons |= Spree::Taxon.joins(:product_taxons).order(:name)
      end

      def positions
        puts "PARAMS: #{params.inspect}"
        @taxon = Spree::Taxon.find(params[:id])
      end
    end
  end
end