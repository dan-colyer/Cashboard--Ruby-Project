require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')
require_relative('../models/transaction.rb')
require('pry-byebug')

merchant1 = Merchant.new({
  "name" => "Apple Store - Edinburgh"
  })

merchant2 = Merchant.new({
  "name" => "Glenshee Ski Slope - Glenshee"
  })

merchant3 = Merchant.new({
  "name" => "Lidl Supermarket - Edinburgh"
  })


tag1 = Tag.new({
  "type" => "Electronic/Digital"
  })

tag2 = Tag.new({
  "type" => "Outdoor/Sports"
  })

tag3 = Tag.new({
  "type" => "Food/Drink (home)"
  })

transaction1 = Transaction.new({
  "description" => "Macbook Pro",
  "merchant_id" => merchant1.id,
  "tag_id" => tag1.id,
  "amount" => 1000,
  "transaction_date" => "2017-10-22"
  })

transaction2 = Transaction.new({
  "description" => "skiing",
  "merchant_id" => merchant2.id,
  "tag_id" => tag2.id,
  "amount" => 110,
  "transaction_date" => "2017-10-19"
  })

transaction3 = Transaction.new({
  "description" => "weekly shop",
  "merchant_id" => merchant3.id,
  "tag_id" => tag3.id,
  "amount" => 46,
  "transaction_date" => "2017-10-19"
  })

binding.pry
nil
