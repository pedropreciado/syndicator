Rails.application.routes.draw do
  namespace :api do
    get 'session/create'
  end

  namespace :api do
    get 'session/destroy'
  end

  namespace :api do
    get 'events/create'
  end

  namespace :api do
    get 'events/destroy'
  end

  namespace :api do
    get 'events/update'
  end

  namespace :api do
    get 'events/show'
  end

  namespace :api do
    get 'events/index'
  end

  namespace :api do
    get 'users/create'
  end

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
