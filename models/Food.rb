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

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM food_data WHERE id=#{id} LIMIT 1"

    foods = conn.exec(sql)

    food = self.hydrate foods[0]

    food

  end

  def self.hydrate food_data
    food = Food.new

    food.id = food_data['id']
    food.city = food_data['city']
    food.country = food_data['country']
    food.shopping = food_data['shoppping']

    food
  end





end
