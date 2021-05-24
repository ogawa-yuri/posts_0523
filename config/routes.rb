Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
      get :top
    end
  end
end
