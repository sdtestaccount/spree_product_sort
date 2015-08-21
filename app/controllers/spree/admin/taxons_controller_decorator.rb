Spree::Admin::TaxonsController.class_eval do

  def reorder_products
    Rails.logger.debug "reorder_products action - TaxonsController"
    Rails.logger.debug "PARAMS in render_products: #{params.inspect}"
    params[:product_taxons].each_with_index do |ptid, idx|
      Rails.logger.debug "ptid: #{ptid}"
      Rails.logger.debug "idx: #{idx}"
      pt = Spree::ProductTaxon.find(ptid.to_i)
      Rails.logger.debug "pt: #{pt}"
      pt.insert_at(idx)
    end
    Rails.logger.debug "head :created - #{head :created}"
    head :created
  end

end
