class NamerController < ApplicationController

  def index
    render('new') 
  end  
  
  def new
  end

  def create
    #first, change any instances of the term "framework" to the new name of the app   
    #file_names = ['config/environments/test.rb', 'config/environments/production.rb', 'config/environment.rb']
    file_names = ['app/helpers/application_helper.rb', 'app/views/pages/home.html.erb', 'rakefile', 'congig/application.rb', 'config.ru', 'config/database.yml', 
                  'config/environments/development.rb', 'config/environments/test.rb', 'config/environments/production.rb', 
                  'config/environment.rb', 'config/initializers/secret_token.rb', 'config/initializers/session_store.rb', 'config/routes', 
                  'spec/controllers/pages_controller_spec.rb']
    file_names.each do |file_name|
      text = File.read(file_name)
      File.open(file_name, "w") { |file| file << text.gsub("Framework", params[:appname]) }
    end
    #next, change the views file
    #next,change the rootpath away from namer#new
    file_name ='config/routes.rb'
    text = File.read(file_name)
    File.open(file_name, "w") { |file| file << text.gsub("namer#new", "pages#home") }
    
    file_name ='config/routes.rb'
    text = File.read(file_name)    
    File.open(file_name, "w") { |file| file << text.gsub("post '/namer' => 'namer#create'", "") }
    flash[:notice] = "Enjoy your app."
    redirect_to(root_path)
  end 

end
