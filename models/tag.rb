require_relative('../db/sql_runner.rb')

class Tag
  attr_reader :id, :type

  def initialize(options)
    @id = options["id"].to_i
    @type = options["type"]
  end
end
