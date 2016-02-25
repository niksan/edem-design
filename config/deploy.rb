ssh_options[:forward_agent] = true
set :application,     "edem-design"
set :deploy_server,   "hydrogen.locum.ru"
set :bundle_without,  [:development, :test]
set :user,            "hosting_niksan"
set :login,           "niksan"
set :use_sudo,        false
set :deploy_to,       "/home/#{user}/projects/#{application}"
set :unicorn_conf,    "/etc/unicorn/#{application}.#{login}.rb"
set :unicorn_pid,     "/var/run/unicorn/#{user}/#{application}.#{login}.pid"
set :bundle_dir,      File.join(fetch(:shared_path), 'gems')
set :linked_dirs,          %w{bin log vendor/bundle public/system public/uploads }
set :rvm_ruby_string, "2.2.2"
set :rake,            "rvm use #{rvm_ruby_string} do bundle exec rake" 
set :bundle_cmd,      "rvm use #{rvm_ruby_string} do bundle"
set :scm,             :git
set :repository,      "git@github.com:niksan/edem-design.git"
role :web,            deploy_server
role :app,            deploy_server
role :db,             deploy_server, :primary => true

require 'bundler/capistrano'

after "deploy:update_code", :link_files

task :link_files, roles => :app do
  %W(config/database.yml public/uploads public/system public/ckeditor_assets).each do |linked_file|
    filepath = "#{ shared_path }/#{ linked_file }"
    run "ln -nfs #{ filepath } #{ release_path }/#{ linked_file }"
  end
end

load 'deploy/assets'

before 'deploy:finalize_update', 'set_current_release'
task :set_current_release, :roles => :app do
    set :current_release, latest_release
end

  set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use #{rvm_ruby_string} do bundle exec unicorn_rails -Dc #{unicorn_conf})"


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
