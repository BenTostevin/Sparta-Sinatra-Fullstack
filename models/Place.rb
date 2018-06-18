class Place

  attr_accessor :id, :country_name, :currency

  def self.open_connection
    conn = PG.connect( dbname: 'places_db' )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM place_data ORDER BY id"

    results = conn.exec(sql)

    places = results.map do |place|
      self.hydrate place
    end

    places

  end

  def save

    conn = Place.open_connection

    if (!self.id)
      sql = "INSERT INTO place_data (country_name,currency) VALUES ('#{self.country_name}','#{self.currency}')"
    else
      sql = "UPDATE place_data SET country_name='#{self.country_name}', currency='#{self.currency}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM place_data WHERE id=#{id} LIMIT 1"

    places = conn.exec(sql)

    place = self.hydrate places[0]

    place

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM place_data WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate place_data
    place = Place.new

    place.id = place_data['id']
    place.country_name = place_data['country_name']
    place.currency = place_data['currency']

    place
  end

end
