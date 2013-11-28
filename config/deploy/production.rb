set :stage, :production

role :all, %w{82.196.2.187}
role :app, %w{82.196.2.187}
role :web, %w{82.196.2.187}
role :db,  %w{82.196.2.187}

server '82.196.2.187', user: 'root', roles: %w{all}#, my_property: :my_value

server '82.196.2.187',
  user: 'root',
  roles: %w{root},
  ssh_options: {
    user: 'root', # overrides user setting above
    keys: %w(/home/niksan/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey)
  }

# fetch(:default_env).merge!(rails_env: :production)
