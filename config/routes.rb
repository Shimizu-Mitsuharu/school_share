Rails.application.routes.draw do
  namespace :parent do
    devise_for :parents,controllers: {
      sessions: 'parent/parents/sessions',
      registrations: 'parent/parents/registrations',
      passwords: 'parent/parents/passwords'
    }
    get 'notice/new'
  end

  scope module: 'site' do
    get 'notice/new'
    devise_for :admins, controllers: {
      sessions: 'site/admins/sessions',
      registrations: 'site/admins/registrations',
      passwords: 'site/admins/passwords'
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
