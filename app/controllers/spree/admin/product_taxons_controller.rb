module Spree
  module Admin
    class ProductTaxonsController
      def index
        puts "INDEX ACTION - ProductTaxonsController"
        puts "PARAMS in index action: #{params.inspect}"
        render :text => params.inspect
      end

      def taxons
        puts "PARAMS in taxons action: #{params.inspect}"
        # List of taxons, beginnning with a virtual taxons for Home, and then all taxons with pts
        @taxons = []
        @taxons |= Spree::Taxon.joins(:product_taxons).order(:name)
      end

      def positions
        puts "PARAMS in positions action: #{params.inspect}"
        @taxon = Spree::Taxon.find(params[:id])
      end
    end
  end
end