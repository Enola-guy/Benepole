Rails.application.routes.draw do

  #source https://www.youtube.com/watch?v=kBdZ9_yGLjg
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
 
    resources :shifts
    resources :rapports
    resources :personnes
    resources :missions
    resources :festivals
    root to: "festivals#index"
  
  end


  # j'ai dût rajouter à la fin de la ligne le "via get/post"
  match'*path', to: redirect("/#{I18n.default_locale}/%{path}"), via: [:get, :post] 
  

  # Code juste en dessous fonctionne pas
  # => match'', to: redirect("/#{I18n.default_locale}"), via: [:get, :post]

 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
