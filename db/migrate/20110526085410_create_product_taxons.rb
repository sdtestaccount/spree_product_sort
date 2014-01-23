class CreateProductTaxons < ActiveRecord::Migration
  def self.up
    create_table :spree_product_taxons do |t|
      t.timestamps
      t.integer 'product_id'
      t.integer 'taxon_id'
      t.integer 'position', :default=>1
    end
    
    # turn products_taxons into product_taxons with an initial order... 
    ActiveRecord::Base.connection.
      execute("select product_id, taxon_id from spree_products_taxons order by taxon_id, product_id").
      each do |res|
        pid = res["product_id"].to_i
        tid = res["taxon_id"].to_i
        
        Spree::ProductTaxon.create(:product_id=>pid, :taxon_id=>tid)
     end
      
    end

    def self.down
      drop_table :spree_product_taxons
    end
  end
