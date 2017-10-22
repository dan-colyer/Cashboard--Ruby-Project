require_relative('../db/sql_runner.rb')

class Tag
  attr_reader :id, :type

  def initialize(options)
    @id = options["id"].to_i
    @type = options["type"]
  end

  def save()
    sql = "INSERT INTO tags
          (type)
          VALUES
          ($1)
          RETURNING id"
    values = [@type]
    results = SqlRunner.run(sql, values)
    @id = results.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM tags"
    values =[]
    results = SqlRunner.run(sql, values)
    return results.map {|result| Tag.new(result)}
  end

  def delete()
    sql = "DELETE FROM tags
          WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

end
