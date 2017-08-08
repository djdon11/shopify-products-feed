Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :feeds do
    collection do
      post :feed_output
    end
  end

  root "feeds#index"
end
