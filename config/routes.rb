Rails.application.routes.draw do
  get 'session/create'

  get 'session/destroy'

  get 'events/create'

  get 'events/destroy'

  get 'events/update'

  get 'events/index'

  get 'events/show'

  get 'users/create'

  get 'users/destroy'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
