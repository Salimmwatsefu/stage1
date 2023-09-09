Rails.application.routes.draw do
  get '/api', to: 'api#info'
end
