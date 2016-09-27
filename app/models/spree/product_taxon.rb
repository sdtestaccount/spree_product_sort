class Spree::ProductTaxon < ActiveRecord::Base
  belongs_to :product
  belongs_to :taxon
  default_scope :order=>'spree_product_taxons.position'
  acts_as_list :scope=>:taxon
  #Accessors removed for Rails 4
  #attr_accessible :product_id, :taxon_id
end
