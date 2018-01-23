require( 'pg' )

class SqlRunner

  def self.run( sql, values )
    begin
      db = PG.connect({
        dbname: 'd92mmsgpqg1pke',
        user: 'nbkmpoqvokxdoq',
        host: 'ec2-54-163-236-188.compute-1.amazonaws.com',
        password: 'bf6fd84aa641d8222f1ee9f3df49137861555f4d6e4e5d5b7d3a4c6e9bbdbc93' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close
    end
    return result
  end

end
