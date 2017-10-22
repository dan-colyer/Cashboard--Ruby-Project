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

  def save()
    sql = "INSERT INTO transactions
          ( description,
            merchant_id,
            tag_id,
            amount,
            transaction_date)
          VALUES
          ($1, $2, $3, $4, $5)
          RETURNING id"
    values = [@description, @merchant_id, @tag_id, @amount, @transaction_date]
    results = SqlRunner.run(sql, values)
    @id = results.first()["id"].to_i
  end

end
