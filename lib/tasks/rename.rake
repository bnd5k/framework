namespace :rename do

    desc 'changes the name of the app'
    task :to, :new_name do |task, args| 
      args[:new_name]
      args[:new_name][0] =  args[:new_name].capitalize[0] 
      # change any instances of the term "framework" to the new name of the app   
      #for testing, just change these: file_names = ['config/environment.rb'] #['config/environments/test.rb', 'config/environments/production.rb', 'config/environment.rb']
      #chagen uppercase instances
      file_names = [ 'rakefile', 'config/application.rb', 'config.ru', 'config/database.yml', 'config/environments/development.rb',
                     'config/environments/test.rb', 'config/environments/production.rb', 'config/environment.rb', 'config/initializers/secret_token.rb',
                     'config/initializers/session_store.rb', 'config/routes.rb',  'app/views/pages/home.html.erb']
      file_names.each do |file_name|
        text = File.read(file_name)
        File.open(file_name, "w") { |file| file << text.gsub("Framework", args[:new_name]) }
      end   
       file_names = ['app/helpers/application_helper.rb', 'config/database.yml', 'config/initializers/session_store.rb', 'config/routes.rb', 
                    'spec/controllers/pages_controller_spec.rb']
      file_names.each do |file_name|
        text = File.read(file_name)
        File.open(file_name, "w") { |file| file << text.gsub("framework", args[:new_name]) }
      end        
      
    
    end 
 
end