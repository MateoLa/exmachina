# Exmachina

Spree 3.7 Testing <br>
(2 steps approval checkout) <br> 
Sponsorized by Cata Laiño.

<img src="app/assets/images/C-deFuego-3.jpg" style="display: inline-block; margin: 0 auto; width: 100px">

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
docker compose exec app bundle exec rails g spree:install --user_class=Spree::User
docker compose exec app bundle exec rails g spree:auth:install
docker compose exec app bundle exec rails g spree_gateway:install
docker-compose exec app rake spree_sample:load
```

4. Restart your server <br>
    If your server was running, restart it so that it can find the assets properly.


## Payments Tests

Test Cards for Bogus.

```ruby
TEST_VISA = ['4111111111111111', '4012888888881881', '4222222222222']
TEST_MC   = ['5500000000000004', '5555555555554444', '5105105105105100', '2223000010309703']
TEST_AMEX = ['378282246310005', '371449635398431', '378734493671000', '340000000000009']
TEST_DISC = ['6011000000000004', '6011111111111117', '6011000990139424']
```

Test Cards for Stripe. <br>
Test this cards using any 3 digits	CVC and any future date

```ruby
Visa	                4242424242424242
Visa (debit)	        4000056655665556
Mastercard	            5555555555554444
Mastercard (2-series)	2223003122003222
Mastercard (debit)	    5200828282828210
Mastercard (prepaid)	5105105105105100
American Express	  378282246310005
American Express	  371449635398431
Discover	          6011111111111117
Discover	          6011000990139424	
Discover (debit)	  6011981111111113
Diners Club	                3056930009020004
Diners Club (14-digit card)	36227206271667
BCcard and DinaCard	        6555900000604105
JCB	                        3566002020360505
UnionPay	                6200000000000005
UnionPay (debit)	        6200000000000047
UnionPay (19-digit card)	6205500000000000004
```

An example of ActiveMerchant Stripe succesful response can be found [here](./stripe_success_response.md).

## Notes

[^Nt1]: Drop DB and delete schema files if they exists 'docker compose run app bundle exec rake db:drop'

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).