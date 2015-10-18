def show_revenue(chain)
end

def list_residents(chain)
  chain.list_residents
end

def checking_out(chain)
  hotel = chain.all_residents
  puts "To begin checking out, please enter your name. If checking out more than one, enter the second name seperated with a comma and space. Example: Jack, Jill"
  check = gets.chomp
  name_out = check.split(", ")
  puts
  if hotel.residents.has_value?(name_out)
    puts "Please confirm (y)es/(n)o/(q)uit,"
    puts "#{check} - checking out of - #{hotel_name = hotel.name}"
    print "--> "
    response = gets.chomp.downcase

    if response == 'y'
      hotel.check_out(hotel_name, name_out)
    elsif response == 'q'
      menu
    else
      checking_out(chain)
    end
  else
    "The name you entered is not currently listed with any of our hotels."
  checking_out(chain)
end

  # Check each hotel for the name(s) being checked out
  # If duplicates in different hotels, confirm which hotel using a list
  # If duplicates in same hotel... crap
end

def checking_in(chain)
  puts chain.list_hotels
  puts
  puts "Please enter the hotel you wish to check in to."
  print "--> "
  hotel_name = gets.chomp
  puts
  puts "Enter up to two names of those checking in, seperated with a comma and space. Example: Jack, Jill"
  print "--> "
  check = gets.chomp
  name_in = check.split(", ")
  puts
  puts "Please confirm (y)es/(n)o/(q)uit,"
  puts "#{check} - checking in to - #{hotel_name}"
  print "--> "
  response = gets.chomp.downcase

  hotel = chain.hotels[hotel_name]

  if response == 'y'
    hotel.check_in(hotel_name, name_in)
  elsif response == 'q'
    menu
  else
    checking_in(chain)
  end
end

def list_hotels(chain)
  chain.list_hotels
end

def menu
  puts `clear`
  puts "*** Welcome to Narnia Beds CORAL ***"
  puts
  puts "What can we do for you today?"
  puts
  puts
  puts "1. List the NBCORAL hotels"
  puts "2. Check In to one of our hotels"
  puts "3. Check Out of one of our hotels"
  puts "4. List the current residents in our hotels"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end