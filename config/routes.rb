Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      # Parts Custom Queries
      get '/parts/find', to: 'parts#find_show'

      # Parts Standard Queries
      get '/parts',     to: 'parts#index'
      get '/parts/:id', to: 'parts#show'

      # Parts Post
      post '/parts',    to: 'parts#create'




    end
  end
end
