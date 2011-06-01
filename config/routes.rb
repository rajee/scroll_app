SlashScroll::Application.routes.draw do
 
   root :to => "employees#index"
   match '/employees/fetch_data', :to => 'employees#fetch_data'
end
