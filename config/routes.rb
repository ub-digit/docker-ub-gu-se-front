Rails.application.routes.draw do
  get 'repository/index'
  get 'show/', to: 'repository#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'repository#index'
end
