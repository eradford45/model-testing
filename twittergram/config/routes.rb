Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/edit'

  get 'bios/index'

  get 'bios/show'

  get 'bios/edit'

  get 'posts/index'

  get 'posts/show'

  get 'posts/edit'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
