Rails.application.routes.draw do

  root "site#index"

  namespace :api do
    namespace :v1 do
      resources :posts, except: :destroy
      delete "posts" => "posts#destroy"

      resources :users
    end
  end
end
