Spree::Product.class_eval do
  self.add_search_scope :in_taxon do |taxon|
    select("spree_products.id, spree_products.*").
    where(id: Spree::ProductTaxon.select('spree_product_taxons.product_id').
          joins(:taxon).
          where(Spree::Taxon.table_name => { :id => taxon.self_and_descendants.pluck(:id) })
         ).
    where(spree_product_taxons: {taxon_id: taxon.id})
  end
end