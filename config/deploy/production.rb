set :stage, :production

#role :all, %w{82.196.2.187}
role :app, %w{188.226.228.199}
role :web, %w{188.226.228.199}
role :db,  %w{188.226.228.199}

server '188.226.228.199', user: 'root', roles: %w{all}#, my_property: :my_value

server '188.226.228.199',
  user: 'root',
  roles: %w{root},
  ssh_options: {
    user: 'root', # overrides user setting above
    keys: %w(/home/niksan/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey)
  }

# fetch(:default_env).merge!(rails_env: :production)
