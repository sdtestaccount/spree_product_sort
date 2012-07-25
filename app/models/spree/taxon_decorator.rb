Spree::Taxon.class_eval do
  has_many :product_taxons,:order=>'spree_product_taxons.position'
  has_many :products, :through=>:product_taxons, :order=>'spree_product_taxons.position'
end
