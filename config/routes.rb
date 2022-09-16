Rails.application.routes.draw do
  resources :books
  root 'books#index' # home page route

  # pages for books
  get 'books/new'
  get 'books/edit'
  get 'books/show'
  get 'books/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
