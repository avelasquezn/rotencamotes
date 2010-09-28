require 'yaml'
file = YAML.load(File.read('config/database.yml'))
database_name = file['development']['database']
namespace :xenda do
  desc "Utilities for dumping data and synchronizing databases and code"

  namespace :db do
    desc "Makes a database dump"
    task :dump => :environment do
      puts "attempting to dump data from db #{database_name}"
      `mysqldump -u root -p #{database_name} > backup.sql`
      puts 'dump finished.'
    end
    
    desc "Updates database with mysql dump"
    task :update => :environment do
      puts "Uploading backup.sql to #{database_name}"
      `mysql -u root -p #{database_name} < backup.sql`
      puts "Update finished"
    end
    
  end

  desc "Pushes code to GitHub"
  task :deploy => :environment do

    puts "attempting to deploy backup.sql with data from #{database_name}"
    `git add backup.sql; git commit -m "Generating new database dump"`
    `git push xenda master`
    puts 'deploy finished.'
  end
  
  desc "Updates code rom GitHub"
  task :update => :environment do
    puts "Pulling new code from GitHub"
    `git pull xenda master`
    puts "New code is here! Yeah!"
  end

  task :release => ['db:dump', :deploy]
  task :synchronize => [:update, "db:update"]
  
end

