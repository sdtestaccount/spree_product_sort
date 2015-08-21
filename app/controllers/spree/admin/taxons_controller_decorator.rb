Spree::Admin::TaxonsController.class_eval do

  def reorder_products
    puts "reorder_products action - TaxonsController"
    puts "PARAMS in render_products: #{params.inspect}"
    params[:product_taxons].each_with_index do |ptid, idx|
      puts "ptid: #{ptid}"
      puts "idx: #{idx}"
      pt = Spree::ProductTaxon.find(ptid.to_i)
      puts "pt: #{pt}"
      pt.insert_at(idx)
    end
    puts "head :created - #{head :created}"
    head :created
  end

end
