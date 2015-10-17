class Chain

  attr_reader :name, :hotels, :residents, :revenue

  def initialize(options={})
    @name = options[:name]
    #@hotels = options[:hotels]
    @hotels = {}
    # @residents = options[:residents]
    @revenue = {}
  end

  def show_revenue
  end

  def list_residents
    @hotels.each do |hotel_name, hotel|
      puts "The #{hotel_name} currently has #{hotel.residents.size} of their total #{hotel.rooms} rooms filled."
        if hotel.residents.size == 0
          puts "This hotel currently has no residents."
          puts
        elsif hotel.residents.size == 2
          puts "Residents include: #{hotel.residents.keys.join(" and ")}"
          puts
        else
          puts "Residents include: #{hotel.residents.keys.join(", ")}"
          puts
        end
    end
  end

  def add_hotel(hotel)
    @hotels[hotel.name] = hotel
  end

  def list_hotels
      puts hotels.map { |key, hotel| hotel.pretty_string }.join
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