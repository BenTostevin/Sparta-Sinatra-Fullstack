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

  def save

    conn = Food.open_connection

    if (!self.id)
      sql = "INSERT INTO food_data (city,country,shopping) VALUES ('#{self.city}','#{self.country}','#{self.shopping}')"
    else
      sql = "UPDATE food_data SET city='#{self.city}', country='#{self.country}', shopping='#{self.shopping}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM food_data WHERE id=#{id} LIMIT 1"

    foods = conn.exec(sql)

    food = self.hydrate foods[0]

    food

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM post WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate food_data
    food = Food.new

    food.id = food_data['id']
    food.city = food_data['city']
    food.country = food_data['country']
    food.shopping = food_data['shopping']

    food
  end

end
