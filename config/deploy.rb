set :application, "rotencamotes"
set :repository,  "git@github.com:xenda/rotencamotes.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/rotencamotes/app/"

set :user, "rotencamotes"
role :web, "173.255.194.103"                          # Your HTTP server, Apache/etc
role :app, "173.255.194.103"                          # This may be the same as your `Web` server
role :db,  "173.255.194.103", :primary => true # This is where Rails migrations will run

set :user, "rotencamotes"
set :port, 30000

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :scm_passphrase, "rotencamotes2"  # The deploy user's password
set :branch, "master"
set :deploy_via, :remote_cache

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end