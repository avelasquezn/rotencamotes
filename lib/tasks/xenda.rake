namespace :xenda do
  desc "Makes a database dump, commmits it, and sends it to github."
  task :release => :environment do
    `mysqldump -u root -p rotencamotes_development > backup.sql`
    `git add backup.sql; git commit -m "Generating new database dump"`
    `git push xenda master`
  end
end

