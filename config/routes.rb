Rails.application.routes.draw do
  resources :experiments do
     get 'download', on: :member
  end

  root 'experiments#index'
end
