Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'application#simulation', as: 'simulation'
  get '/componentes', to: 'application#componentes', as: 'componentes'
  get '/energia_renovable', to: 'application#energia_renovable', as: 'info_energia'
  get '/marco_teorico', to: 'application#marco_teorico', as: 'marco_teorico'
end
