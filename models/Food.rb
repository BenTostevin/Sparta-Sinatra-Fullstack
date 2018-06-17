class Food

  attr_accessor :id, :city, :country, :shopping

  def self.open_connection
    conn = PG.connect( dbname: 'foods' )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM food_data ORDER BY id"

    results = conn.exec(sql)

    foods = results.map do |food|
      self.hydrate food
    end

    foods

  end

end
