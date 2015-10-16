require 'pry-byebug'

require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'person'

require_relative 'methods'

chain = Chain.new name: "Narnia Beds CORAL"

chain.add_hotel(Hotel.new(name: "NB Cambridge", location: "Cambridge, England", rooms: 12, occupants: 0))
chain.add_hotel(Hotel.new(name: "NB Orlando", location: "Orlando, Florida, USA", rooms: 15, occupants: 0))
chain.add_hotel(Hotel.new(name: "NB Rome", location: "Rome, Italy", rooms: 14, occupants: 0))
chain.add_hotel(Hotel.new(name: "NB Aberdeen", location: "Aberdeen, Scotland", rooms: 12, occupants: 0))
  chain.add_hotel(Hotel.new(name: "NB Leck", location: "Leck, Germany", rooms: 14, occupants: 0))

response = menu

until response == 0

  case response
    when 1
      list_hotels(chain)
    when 2
      checking_in(chain)
    when 3
      checking_out(chain)
    when 4
      list_residents(chain)
    when 5
      show_revenue(chain)
    else
      puts "Your selection was invalid"
    end

    puts "Press enter to continue"
    gets

    response = menu

  end

  binding.pry;''