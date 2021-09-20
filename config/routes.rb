Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      scope 'games' do
        get 'index', to: 'games#index'
        get 'show/:id', to: 'games#show'
      end
    end
  end
end
