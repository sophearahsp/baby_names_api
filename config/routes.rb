Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :url_identifications, only: [:new,:index, :show, :create] do
        resources :name_ideas
      end
    end
  end
end
