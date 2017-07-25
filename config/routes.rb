Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'buildings#index'
  get '/energy_usage' => 'buildings#index'
end
