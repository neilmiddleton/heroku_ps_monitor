KyanGecko::Application.routes.draw do

  match 'ps_count/:app_name' => 'heroku/process#count'
  
end
