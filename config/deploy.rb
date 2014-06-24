set :application,          'edem-design'
set :repo_url,             'git://github.com/niksan/edem-design.git'
set :scm,                  :git
set :rails_env,            'production'
set :rvm_ruby_string,      '2.1.1@edem-design'
set :deploy_to,            "/srv/htdocs/#{fetch(:application)}"
set :unicorn_conf,         "#{fetch(:deploy_to)}/current/config/unicorn.rb"
set :unicorn_pid,          "#{fetch(:deploy_to)}/shared/pids/unicorn.pid"
set :format,               :pretty
set :log_level,            :info
set :pty,                  true
set :linked_files,         %w{config/database.yml config/newrelic.yml}
set :linked_dirs,          %w{bin log vendor/bundle public/system public/uploads public/ckeditor_assets}
set :keep_releases,        5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end

namespace :unicorn do

  def run_unicorn
    execute "#{fetch(:bundle_binstubs)}/unicorn", "-c #{release_path}/config/unicorn.rb -D -E #{fetch(:stage)}"
  end

  desc 'Start unicorn'
  task :start do
    on roles(:app) do
      run_unicorn
    end
  end

  desc 'Stop unicorn'
  task :stop do
    on roles(:app) do
      if test "[ -f #{fetch(:unicorn_pid)} ]"
        execute :kill, "-QUIT `cat #{fetch(:unicorn_pid)}`"
      end
    end
  end

  desc 'Force stop unicorn (kill -9)'
  task :force_stop do
    on roles(:app) do
      if test "[ -f #{fetch(:unicorn_pid)} ]"
        execute :kill, "-9 `cat #{fetch(:unicorn_pid)}`"
        execute :rm, fetch(:unicorn_pid)
      end
    end
  end

  desc 'Restart unicorn'
  task :restart do
    on roles(:app) do
      if test "[ -f #{fetch(:unicorn_pid)} ]"
        execute :kill, "-USR2 `cat #{fetch(:unicorn_pid)}`"
      else
        run_unicorn
      end
    end
  end
end
