Rails.application.routes.draw do
  resources :ramals do
    collection do
      get 'remove_all'
    end
  end
  post 'import_from_excel' => "ramals#import_from_excel"
  get 'home/index'
  get 'home/news_setembro'
  root "home#news_setembro"
end
