class Chain

  attr_reader :name, :hotels, :residents, :revenue

  def initialize(options={})
    @name = options[:name]
    #@hotels = options[:hotels]
    @hotels = {}
    @residents = options[:residents]
    @revenue = {}
  end

  def show_revenue
  end

  def list_residents
    @hotels.keys.each do |hotel|
      puts "The #{hotel} currently has #{@residents.size} of their total rooms filled."
    end
  end

  def add_hotel(hotel)
    @hotels[hotel.name] = hotel
  end

  def list_hotels
      hotels.map { |key, hotel| hotel.pretty_string }.join("\n")
  end

end


# def list_residents
#   # if residents.empty?
#   #   "We are a start up hotel chain... How we have so many hotels already, is not important. But as of now, we gots nothing."
#   # else
#   #   @hotels[hotel.name].each do |hotel|
#   #     hotel.value? if false
#   #     puts "The #{hotel} currently has no residents."
#   #   else
#   #     puts "The #{hotel} currently has the following residents."
#   #     puts @residents[hotel].join(", ")
#   #   end
#   #   end
#   # end
# end