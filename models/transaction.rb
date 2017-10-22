require_relative('../db/sql_runner.rb')

class Transaction
  attr_reader :id, :description, :merchant_id, :tag_id, :amount, :transaction_date

  def initialize(options)
    @id = options["id"].to_i
    @description = options["description"]
    @merchant_id = options["merchant_id"].to_i
    @tag_id = options["tag_id"].to_i
    @amount = options["amount"].to_i
    @transaction_date = options["transaction_date"]
  end
end
