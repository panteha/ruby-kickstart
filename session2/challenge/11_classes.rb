# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(number)
    @number = number
    @number = 0 if @number < 0
    @number = 99 if @number > 99
  end
  def print_song
    while (@number > 2)
    puts  "#{self.write_number_in_english} bottles of beer on the wall,"
    puts "#{self.write_number_in_english} bottles of beer,"
    puts "Take one down, pass it around,"
    @number -= 1
    puts "#{self.write_number_in_english} bottles of beer on the wall."
  end
    if @number == 2
      puts  "#{self.write_number_in_english} bottles of beer on the wall,"
      puts "#{self.write_number_in_english} bottles of beer,"
      puts "Take one down, pass it around,"
      @number -= 1
      puts "#{self.write_number_in_english} bottle of beer on the wall."
    end

    if @number == 1
      puts  "#{self.write_number_in_english} bottle of beer on the wall,"
      puts "#{self.write_number_in_english} bottle of beer,"
      puts "Take one down, pass it around,"
      @number -= 1
      puts "#{self.write_number_in_english} bottles of beer on the wall."
    end

    puts ""
  end

  def write_number_in_english
    arr_1 = ["Zero" , "One" , "Two" , "Three" , "Four", "Five" , "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
    arr_2 = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy","Eighty","Ninety"]
    arr_3 = ["" , "-One" , "-Two" , "-Three" , "-Four", "-Five" , "-Six", "-Seven", "-Eight", "-Nine"]
    return arr_1[@number] if @number < 20
    return (arr_2 [@number/10] + arr_3 [(@number % 10)].downcase) if @number > 19

  end

end


poem = BeerSong.new(99)
puts poem.print_song
