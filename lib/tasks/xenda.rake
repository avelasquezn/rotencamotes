require 'yaml'
file = YAML.load(File.read('config/database.yml'))
database_name = file['development']['database']
namespace :xenda do
  desc "Makes a database dump, commmits it, and sends it to github."

  namespace :db do

    task :dump => :environment do
      puts "attempting to dump data from db #{database_name}"
      `mysqldump -u root -p #{database_name} > backup.sql`
      puts 'dump finished.'
    end
  end

  task :deploy => :environment do

    puts "attempting to deploy backup.sql with data from #{database_name}"
    `git add backup.sql; git commit -m "Generating new database dump"`
    `git push xenda master`
    puts 'deploy finished.'
  end

  task :release => ['db:dump', :deploy]
end

