Rails.application.routes.draw do
    root "pages#index"
    
    namespace :support do
      resources :tickets
    end
    
    resources :articles
    resources :services
    resources :projects
    
    get  "/", to: 'pages#index'
    get  "/portfolio", to: 'projects#index'
    get  "/about", to: 'pages#about'
    match '/contact', to: 'contacts#new', via: 'get'
    resources "contacts", only: [:new, :create]
    #get  "/contact", to: 'pages#contact'
    #get  "/support", to: 'support#index'
    match '/quote', to: 'quotes#new', via: 'get'
    resources "quotes", only: [:new, :create]
    #get  "/quote", to: 'pages#quote'
    get  "/terms", to: 'pages#terms'
    get  "/privacy", to: 'pages#privacy'
end
