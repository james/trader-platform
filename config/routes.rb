Rails.application.routes.draw do
  post '/import', to: 'users#import'
  root 'users#index'
end
