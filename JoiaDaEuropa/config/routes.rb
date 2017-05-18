Rails.application.routes.draw do

  get 'backoffice/index'

    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/profile/index'
    get '/home/index'
    get '/client_area/index'
    get '/client_area/new_order'
    get '/client_area/save_order'

    get '/client_area/view_order/:order_id', to: 'client_area#view_order', as: 'client_area_view_order'
    get '/client_area/edit_order/:order_id', to: 'client_area#edit_order', as: 'client_area_edit_order'

    post '/client_area/save_order'
    post '/client_area/destroy_order'

    root to: 'home#index'

end
