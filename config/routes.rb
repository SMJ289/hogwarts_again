Rails.application.routes.draw do

  get '/professors', to: 'professors#index'

  get '/professors/:professor_id', to: 'professor_students#index'

end
