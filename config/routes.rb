Megumi::Application.routes.draw do
  resources :shows, only: :show
  root :to => 'shows#index'
end
