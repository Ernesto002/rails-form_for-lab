Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :new, :show, :create, :update]
  resources :students, only: [:index, :new, :show, :create, :update]
  get 'school_classes/:id/edit', to: 'school_classes#edit', as: :edit_school_class
  patch 'school_classes/:id', to: 'school_classes#update'
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
end
