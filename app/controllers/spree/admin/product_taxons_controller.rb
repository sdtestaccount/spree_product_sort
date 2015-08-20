module Spree
  module Admin
    class ProductTaxonsController < ResourceController
      def index
        Rails.logger.debug "INDEX ACTION - ProductTaxonsController"
        Rails.logger.debug "PARAMS: #{params.inspect}"
      end

      def taxons
        # List of taxons, beginnning with a virtual taxons for Home, and then all taxons with pts
        @taxons = []
        @taxons |= Spree::Taxon.joins(:product_taxons).order(:name)
      end

      def positions
        @taxon = Spree::Taxon.find(params[:id])
      end
    end
  end
end