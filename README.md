# Exmachina

Exmachina for spree 3.7 testing. <br>
(2 steps approval checkout) <br> 
Sponsorized by Cata Laiño.

<img
  src="app/assets/images/C-deFuego-3.jpg" style="display: inline-block; margin: 0 auto; width: 100px">

## Installation

1. Run docker compose initialization file.
    ```sh
    docker compose build
    ```
This will create docker containers: postgres, redis, app, worker, nginx and certbot.<br>
Html access is initialized and first certbot authentication keys are generated. 

2. Create DB and install spree [^Nt1]

```ruby
docker compose run app bundle exec rails db:create
docker compose run app bundle exec rails g spree:install --user_class=Spree::User
docker compose exec app bundle exec rails g spree:auth:install
docker compose exec app bundle exec rails g spree_gateway:install
docker-compose exec app rake spree_sample:load
```

4. Restart your server <br>
    If your server was running, restart it so that it can find the assets properly.


## Notes

[^Nt1]: Drop DB and delete schema files if they exists 'docker compose run app bundle exec rake db:drop'

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).