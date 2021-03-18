Rails.application.routes.draw do
  #API
  namespace :api, defaults: { format: 'json' } do
    #Get Requests
    get 'comunicados', to: 'comunicados#mayor_de_edad'
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
