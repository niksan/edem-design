
set :application, "edem-design"

set :scm, :git
set :repository,  "git://github.com/niksan/edem-design.git"

set :user, "hosting_niksan"
set :use_sudo, false
set :deploy_to, "/home/hosting_niksan/projects/edem-design"


role :web, "lithium.locum.ru"   # Your HTTP server, Apache/etc
role :app, "lithium.locum.ru"   # This may be the same as your `Web` server
role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run

#after "deploy:update_code", :copy_database_config

#task :copy_database_config, roles => :app do
#  db_config = "#{shared_path}/database.yml"
#  run "cp #{db_config} #{release_path}/config/database.yml"
#end

set :unicorn_conf, "/etc/unicorn/edem-design.niksan.rb"
set :unicorn_pid, "/var/run/unicorn/edem-design.niksan.pid"


set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use 1.9.3-p125 do bundle exec unicorn_rails -Dc #{unicorn_conf})"

# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run unicorn_start_cmd
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_start_cmd}"
  end
end
