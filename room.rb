class Room

  attr_reader :hotel, :rooms, :vacancies, :residents

  def initialize(options={})
    @hotel = options[:hotel.name]
    @rooms = options[:rooms]
    @vacancies = rooms - residents.size
    @residents = {}
  end

end