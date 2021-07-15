Spree::Core::Engine.routes.prepend do
  resources :stock_requests

  namespace :admin do
    resources :reports, :only => [:index] do
      get 'stock_requests', :on => :collection
    end
  end
end
