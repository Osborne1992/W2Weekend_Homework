def show_revenue(chain)
end

def list_residents(chain)
  chain.list_residents
end

def checking_out(chain)
  puts "To begin checking out, please enter your name. If checking out more than one, enter the second name seperated with a comma and space. Example: Jack, Jill"
  name = check = gets.chomp.split(", ")
  puts
  puts "Thank you. Give us a moment to look up your details..."
  sleep 2
  # Check each hotel for the name(s) being checked out
  # If duplicates in different hotels, confirm which hotel using a list
  # If duplicates in same hotel... crap
end

def checking_in(chain)
  puts chain.list_hotels
  puts
  puts "Please enter the hotel you wish to check in to"
  print "--> "
  hotel_name = gets.chomp
  # if hotel_name != chain.hotels[name]
  #   puts "The hotel name you entered was invalid."
  #   puts "Press enter to try again"
  #   gets
  #   checking_in(chain)
  # else
  # end
  puts
  puts "Enter up to two names of those checking in, seperated with a comma and space. Example: Jack, Jill"
  print "--> "
  check = gets.chomp
  name_in = check.split(", ")
  puts
  puts "Please confirm (y)es/(n)o/(q)uit,"
  puts "#{check} - checking in to - #{hotel_name}"
  print "--> "
  response = gets.chomp

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
  puts chain.list_hotels
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