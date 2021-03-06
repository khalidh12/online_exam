Rails.application.routes.draw do
  
  get 'subscribe/index'

  get 'results/index'

  get '/ajs' => 'ajs#index'

  get 'addtests/index'

  get '/ecetform/:id' => 'ecet#ecetform'
  get '/ecetform' => 'ecet#ecetform'
  get '/ecet/:subject' => 'ecet#index'
   get '/ecetsubjects' => 'ecet#subjects'
  get '/eamcetform' => 'eamcet#index'

  post '/addeamcet' => 'eamcet#addeamcet'
  post '/addecet' => 'ecet#addecet'

  get '/exam/:id/:subject' => 'exam#index'

  post '/ecetcompleted' => 'ecet#ecetcompleted'

   get '/restart/:tc/:subject' => 'ecet#restart'

  get 'home/index'

  get '/addtests' => 'addtests#index'

  get '/admin' => 'admin#index'

  get '/questions/:tc/:subject' => 'admin#questions'

  # post '/addquestion' => 'quesions#index'

  # get '/addquestion' => 'quesions#index'

  # post '/addquestions' => 'quesions#addquestions'
  # get '/addquestions' => 'quesions#addquestions'

  post '/submitque' => 'exam#submitque'
  get '/submitque' => 'exam#submitque'

  get 'ecetresults/:id/:subject' => 'exam#ecetresults'

  get '/ap-apsbtet-results' => 'subscribe#apsubscribe'
  get '/ts-tssbtet-results' => 'subscribe#tssubscribe'

  post '/subscribed' => 'subscribe#subscribed'


  # resources :quesions

  # resources :exams
  # resources :submitques


  get '/adminmain' => 'blogs#adminmain'
   get '/ecet-syllabus-weightage-marks-tips' => 'blogs#ecettips'

  get '/ecet-tips-civil' => 'blogs#ecettipscivil'

  get '/ecet-question-papers-keys' => 'blogs#question_paper'

  get '/ap-eamcet-results-2017' => 'blogs#ap_eamcet_results'
  get '/ts-polycet-results-2017' => 'blogs#ts_polycet_results'
   get '/ap-polycet-results-2017' => 'blogs#ap_polycet_results'
  get '/ap-ssc-results' => 'blogs#ap_ssc_results'
  get '/ap-ecet-results' => 'blogs#ap_ecet_results'
  get '/ts-ecet-results' => 'blogs#ts_ecet_results'
  get '/neet-results' => 'blogs#cbse'
  get '/tn-sslc-results' => 'blogs#tnsslc'
  get 'ts-sbtet-diploma-results' => "blogs#ts_sbtet"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'blogs#adminmain'
    
    devise_for :users, :controllers => { :registrations => 'registrations'}
    devise_scope :user do
      get "/login", :to => 'devise/sessions#new'
      get '/logout', :to => 'devise/sessions#destroy' 
    end
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  # get '*url' => 'errors#routing'
end
