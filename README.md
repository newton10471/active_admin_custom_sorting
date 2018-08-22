# active_admin_custom_sorting

After cloning this repository, run the following commands to reproduce the issue:

```ruby
rake db:migrate
rake db:seed
rails s
```

then log in with admin@example.com, password 'password', and navigate to the Admin User tab. Try sorting on 'Gold Stars'.
