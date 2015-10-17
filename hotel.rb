class Hotel

  attr_reader :name, :rooms, :location, :residents

  def initialize(options={})
    @name = options[:name]
    @rooms = options[:rooms]
    @location = options[:location]
    @residents = {}
  end

  def check_in(hotel_name, name_in)
    name_in.each do |hotel_name, name|
      @residents[hotel_name] = name
    end

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
    puts "Hotel: #{name} - Location: #{location} - #{residents.size}/#{rooms} residents"
  end

end