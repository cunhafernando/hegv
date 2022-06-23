Rails.application.routes.draw do
  resources :ramals do
    collection do
      get 'remove_all'
    end
  end
  post 'import_from_excel' => "ramals#import_from_excel"
  get 'home/index'
  root "home#index"
end
