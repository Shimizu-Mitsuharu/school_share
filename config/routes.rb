Rails.application.routes.draw do

  namespace :parent do
    root to: 'top#top'
    get 'notice/new'
    devise_for :parents,controllers: {
      sessions: 'parent/parents/sessions',
      registrations: 'parent/parents/registrations',
      passwords: 'parent/parents/passwords'
    }
  end

  namespace :admin do
    get 'notice/new'
    devise_for :admins, controllers: {
      sessions: 'admin/admins/sessions',
      registrations: 'admin/admins/registrations',
      passwords: 'admin/admins/passwords'
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
