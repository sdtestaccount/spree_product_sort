Spree::Core::Engine.routes.prepend do
  
  namespace :admin do
		# callback for jQuery sort action
    match 'taxons/reorder_products/:id' => 'taxons#reorder_products', :via => :put
    match 'product_taxons/taxons' => 'product_taxons#taxons', :as => :product_sort_taxon
    match 'product_taxons/:id/positions' => 'product_taxons#positions', :as => :product_sort
    resources :product_taxons do
      collection do
        get :positions
      end
    end
      
  end
end
