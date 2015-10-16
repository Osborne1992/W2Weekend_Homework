class Chain

  attr_reader :name, :hotels, :residents, :revenue

  def initialize(options={})
    @name = options[:name]
    #@hotels = options[:hotels]
    @hotels = {}
    @residents = {}
    @revenue = {}
  end

  def show_revenue
  end

  def list_residents
    if residents.empty?
      "We are a start up hotel chain... How we have so many hotels already, is not important. But as of now, we gots nothing."
    else
      residents.map { |key, resident|  }.join("\n")
    end
  end

  def add_hotel(hotel)
    @hotels[hotel.name] = hotel
  end

  def list_hotels
    if hotels.empty?
      "We are a start up hotel chain... How we have so many hotels already, is not important. But as of now, we gots nothing."
    else
      hotels.map { |key, hotel| hotel.pretty_string }.join("\n")
    end
  end

end