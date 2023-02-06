dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }

def get_city_names(city_list)
    puts city_list.keys
end

def get_area_code(city_list, key)
    return city_list[key]
end

loop do
  puts 'Do you want to lookup the area code according to the city name? (Y/N)'
  ans = gets.chomp.downcase
  break if ans == 'n'
  puts 'Which city do you want to know the area code for: '
  get_city_names(dial_book)
  print "Enter your choice : "
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "Enter a city name from the list provided above."
  end

end