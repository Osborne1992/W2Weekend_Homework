class Hotel

  attr_reader :name, :rooms, :location, :residents

  def initialize(options={})
    @name = options[:name]
    @rooms = options[:rooms]
    @location = options[:location]
    @residents = {}
  end

  def check_in(hotel_name, name_in)
    if name_in.size == 1
      puts
      puts "
*** #{name_in.join} has been checked into the #{@name[hotel_name]}.
*** We look forward to your stay."
    else
      puts "
*** #{name_in.join(" and ")} have been checked into the #{@name[hotel_name]}.
*** We look forward to your stay."
  end
  end

  def pretty_string
    if residents.size == 1
    "Hotel: #{name} - Location: #{location}
Currently has #{residents.size} resident in their #{rooms} total rooms.
"  
    elsif residents.size == rooms
      "Hotel: #{name} - Location: #{location}
Currently has all #{rooms} occupied. We apologise for this inconvenience.
"
    else
      "Hotel: #{name} - Location: #{location}
Currently has #{residents.size} residents in their #{rooms} total rooms.
"
    end
  end

end