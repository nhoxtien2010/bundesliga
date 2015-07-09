Rails.application.routes.draw do  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :videos
  resources :baiviets
    
  resources :banthangs

  resources :phamlois

  resources :thephats

  resources :chitiettrandaus

  resources :trandaus

  resources :lichthidaus

  resources :chitietbxhs

  resources :bangxephangs

  resources :vongdaus

  resources :sanvandongs

  resources :cauthus

  resources :loaimedia

  resources :lenxuonghangs

  resources :doibongs

  resources :vitris

  resources :huanluyenviens

  resources :baiviets

  get 'home/index'
  get '/admin/index', to: 'admin#index', as: 'admin_index'
  
  get 'home/index',to: 'home#index', as: 'index'
  get '/home/news', to: 'home#news', as: 'news'
  get '/home/watch', to: 'home#watch', as: 'watch'
  get '/home/players', to: 'home#players', as: 'players'
  get '/home/stats', to: 'home#stats', as: 'stats'
  get '/home/about', to: 'home#about', as: 'about'
  get '/home/fanzone', to: 'home#fanzone', as: 'fanzone'
  get '/home/chitietdoibong/:id', to: 'home#chitietdoibong', as: 'chitietdoibong'
  get '/home/chitietdoibong/:id', to: 'home#tinmoi_doibong', as: 'tinmoi_doibong'
  get '/home/dulieu_doibong/:id', to: 'home#dulieu_doibong', as: 'dulieu_doibong'
  get '/home/cauthu_doibong/:id', to: 'home#cauthu_doibong', as: 'cauthu_doibong'
  get '/home/ltd_doibong/:id', to: 'home#ltd_doibong', as: 'ltd_doibong'
  get '/home/sanvandong_doibong/:id', to: 'home#sanvandong_doibong', as: 'sanvandong_doibong'
  get '/home/chitiet_baiviet/:id', to: 'home#chitiet_baiviet', as: 'chitiet_baiviet'
  get '/home/chitiet_video/:id', to: 'home#chitiet_video', as: 'chitiet_video'
  
  root to: "home#index"
  post '/change_locale/:locale', to: 'setting#change_locale', as: :change_locale
  post '/change_stat/:stt', to: 'home#change_stat', as: :change_stat
  post '/find_cauthu_ten', to: 'home#find_cauthu_ten', as: :find_cauthu_ten
  
  
  #   admin controller post
  post '/admin_xuly', to: 'admin#xuly', as: :admin_xuly
  
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
