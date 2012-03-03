set :application, "edem-design"

set :scm, :git
set :repository,  "git://github.com/niksan/edem-design.git"

set :user, "hosting_niksan"
set :use_sudo, false
set :deploy_to, "/home/hosting_niksan/projects/edem-design"


role :web, "lithium.locum.ru"   # Your HTTP server, Apache/etc
role :app, "lithium.locum.ru"   # This may be the same as your `Web` server
role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run

after "deploy:update_code", :remove_links, :set_links

task :remove_links, roles => :app do
  run "rm -rf #{release_path}/tmp"
end

task :set_links, roles => :app do
  links = {
    '/assets' => '/public/assets',
    '/ckeditor_assets' => '/public/ckeditor_assets',
    '/config/database.yml' => '/config/database.yml',
  } # shared_path => release_path
  links.each do |from, destination|
    run "rm -rf #{release_path}#{destination}"
    run "ln -s #{shared_path}#{from} #{release_path}#{destination}"
  end
end

task :do_migrations, roles => :app do
  run "cd #{deploy_to}/current; bundle exec rake RAILS_ENV=production db:migrate"
end

set :unicorn_conf, "/etc/unicorn/edem-design.niksan.rb"
set :unicorn_pid, "/var/run/unicorn/edem-design.niksan.pid"


set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use 1.9.3-p125; bundle install --path ../../shared/gems; bundle exec unicorn_rails -Dc #{unicorn_conf})"

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
