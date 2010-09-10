ActionController::Routing::Routes.draw do |map|

  map.devise_for :users

  map.devise_for :admins

  map.resources :scores

  map.resources :showtimes

  map.resources :schedules

  map.resources :movie_characters

  map.resources :awards

  map.resources :award_categories

  map.resources :award_institutions

  map.resources :videos

  map.resources :photos

  map.resources :post_categories

  map.resources :ads

  map.resources :comments

  map.resources :posts

  map.resources :blog_images

  map.resources :blogs

  map.resources :categories

  map.resources :external_links

  map.resources :assets

  map.resources :studios

  map.resources :movie_chains

  map.resources :theatres

  map.resources :profiles

  map.resources :users

  map.resources :genres

  map.resources :people

  map.resources :movies, :collection => {:latest => :get}




  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  map.namespace :admin do |admin|
  # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
    admin.admin_root '/', :controller => :home
    admin.resources :ads
    admin.resources :assets
    admin.resources :award_categories
    admin.resources :award_institutions
    admin.resources :awards
    admin.resources :blogs
    admin.resources :categories
    admin.resources :comments
    admin.resources :external_links
    admin.resources :genres
    admin.resources :movie_chains
    admin.resources :movie_characters
    admin.resources :movies
    admin.resources :people
    admin.resources :photos
    admin.resources :post_categories
    admin.resources :posts
    admin.resources :profiles
    admin.resources :schedules
    admin.resources :scores
    admin.resources :showtimes
    admin.resources :studios
    admin.resources :theatres
    admin.resources :users
    admin.resources :videos
  end

  map.namespace :member do |member|
    member.resources :assets
    member.resources :blog_images
    member.resources :blogs
    member.resources :categories
    member.resources :post_categories
    member.resources :posts
    member.resources :comments
  end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.

  # map routes
  map.root :controller => "home"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

