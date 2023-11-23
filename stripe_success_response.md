(byebug) response <br>
<ActiveMerchant::Billing::Response:0x00007fe966e7d310 <br> 
@params={"id"=>"ch_3OFbdGJ4sKQK7Qy005ifHFgE", "object"=>"charge", "amount"=>2599, "amount_captured"=>2599, "amount_refunded"=>0, "application"=>nil, "application_fee"=>nil, "application_fee_amount"=>nil, "balance_transaction"=>"txn_3OFbdGJ4sKQK7Qy00IhEDnaY", <br> 
         "billing_details"=>{"address"=>{"city"=>"Mont", "country"=>"United States", "line1"=>"Obligado", "line2"=>"", "postal_code"=>"33650", "state"=>"FL"}, <br>
                             "email"=>nil, "name"=>"Mateo Yo", "phone"=>nil}, <br>
          "calculated_statement_descriptor"=>"Stripe", "captured"=>true, "created"=>1700741026, "currency"=>"usd", "customer"=>"cus_P3j41NXipK4pQq", "description"=>"Spree Order ID: R283518845-P45H3SVC", "destination"=>nil, "dispute"=>nil, "disputed"=>false, "failure_balance_transaction"=>nil, "failure_code"=>nil, "failure_message"=>nil, "fraud_details"=>{}, "invoice"=>nil, "livemode"=>false, "metadata"=>{}, "on_behalf_of"=>nil, "order"=>nil, <br>
          "outcome"=>{"network_status"=>"approved_by_network", "reason"=>nil, "risk_level"=>"normal", "risk_score"=>14, "seller_message"=>"Payment complete.", "type"=>"authorized"}, <br>
          "paid"=>true, "payment_intent"=>nil, "payment_method"=>"card_1OFbcAJ4sKQK7Qy0uImCdj1O", <br> 
          "payment_method_details"=>{"card"=>{"amount_authorized"=>2599, "brand"=>"mastercard", <br>
                                             "checks"=>{"address_line1_check"=>"pass", "address_postal_code_check"=>"pass", "cvc_check"=>"pass"}, <br>
                                             "country"=>"US", "exp_month"=>11, "exp_year"=>2025, "extended_authorization"=>{"status"=>"disabled"}, "fingerprint"=>"EKiKjyzUNZcRh8lW", "funding"=>"credit", "incremental_authorization"=>{"status"=>"unavailable"}, "installments"=>nil, "last4"=>"3222", "mandate"=>nil, "multicapture"=>{"status"=>"unavailable"}, "network"=>"mastercard", "network_token"=>{"used"=>false}, "overcapture"=>{"maximum_amount_capturable"=>2599, "status"=>"unavailable"}, "three_d_secure"=>nil, "wallet"=>nil}, <br>
                                    "type"=>"card"}, <br>
          "receipt_email"=>nil, "receipt_number"=>nil, "receipt_url"=>"https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xSkNRTExKNHNLUUs3UXkwKKP__KoGMgaJ8Le_KWk6LBbwZIRkmi4jqep_5oBqpvQN826tcMl1_zIMeG1kPFIlCTUl7qWDZkbTRNuE", "refunded"=>false, <br>
          "refunds"=>{"object"=>"list", "data"=>[], "has_more"=>false, "total_count"=>0, "url"=>"/v1/charges/ch_3OFbdGJ4sKQK7Qy005ifHFgE/refunds"}, <br>
          "review"=>nil, "shipping"=>nil, <br>
          "source"=>{"id"=>"card_1OFbcAJ4sKQK7Qy0uImCdj1O", "object"=>"card", "address_city"=>"Mont", "address_country"=>"United States", "address_line1"=>"Obligado", "address_line1_check"=>"pass", "address_line2"=>"", "address_state"=>"FL", "address_zip"=>"33650", "address_zip_check"=>"pass", "brand"=>"MasterCard", "country"=>"US", "customer"=>"cus_P3j41NXipK4pQq", "cvc_check"=>"pass", "dynamic_last4"=>nil, "exp_month"=>11, "exp_year"=>2025, "fingerprint"=>"EKiKjyzUNZcRh8lW", "funding"=>"credit", "last4"=>"3222", "metadata"=>{}, "name"=>"Mateo Yo", "tokenization_method"=>nil, "wallet"=>nil}, <br>
          "source_transfer"=>nil, "statement_descriptor"=>nil, "statement_descriptor_suffix"=>nil, "status"=>"succeeded", "transfer_data"=>nil, "transfer_group"=>nil}, <br>
@message="Transaction approved", <br>
@success=true, <br>
@test=true, <br>
@authorization="ch_3OFbdGJ4sKQK7Qy005ifHFgE", <br>
@fraud_review=nil, <br>
@error_code=nil, <br>
@emv_authorization=nil, <br>
@network_transaction_id=nil, <br>
@avs_result={"code"=>"Y", "message"=>"Street address and 5-digit postal code match.", "street_match"=>"Y", "postal_match"=>"Y"}, <br>
@cvv_result={"code"=>"M", "message"=>"CVV matches"}> <br>