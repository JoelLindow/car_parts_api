Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get '/parts',     to: 'parts#index'
      get '/parts/:id', to: 'parts#show'
      
    end
  end
end
