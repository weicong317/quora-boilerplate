require 'rake'

# Include environment settings

require ::File.expand_path('../config/init', __FILE__)

# Require all ActiveSupport's class and extensions

# require 'active_support/core_ext'

namespace :generate do

 desc "Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_tasks"
 task :migration do

   unless ENV.has_key?('NAME')

     raise "Must specify migration name, e.g., rake generate:migration NAME=create_tasks"

   end

   name      = ENV['NAME'].camelize

   filename  = "%s_%s.rb" % [Time.now.strftime('%Y%m%d%H%M%S'), ENV['NAME'].underscore]

   path      = APP_ROOT.join('db', 'migrate', filename)

   if File.exist?(path)

     raise "ERROR: File '#{path}' already exists"

   end

   puts "Creating #{path}"

   File.open(path, 'w+') do |f|

     f.write(<<-EOF.strip_heredoc)

       class #{name} < ActiveRecord::Migration[5.0]

         def change

         end

       end

     EOF

   end

 end

end

namespace :db do
  desc "Create the database at #{DB_NAME}"
  task :create do
    puts "Create database #{DB_NAME} if it doesn't exist..."
    exec("createdb #{DB_NAME}")
  end

  desc "Drop the database at #{DB_NAME}"
  task :drop do
    puts "Dropping database #{DB_NAME}..."
    exec("dropdb #{DB_NAME}")
  end
  
 desc "Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
 task :migrate do

  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::MigrationContext.new(ActiveRecord::Migrator.migrations_paths).migrate do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
 end


  desc "Populate the database with dummy data by running db/seeds.rb"
  task :seed do
    require APP_ROOT.join('db', 'seeds.rb')
  end

  desc "Returns the current schema version number"
  task :version do
    puts "Current version: #{ActiveRecord::Migrator.current_version}"
  end
end


desc 'Initiate IRB console with environment loaded'
task "console" do
  exec "irb -r./config/init"
end