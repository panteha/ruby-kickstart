# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change these values
# Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
# Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5

class Fraction

  def initialize (numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def numerator= (numerator)
    @numerator = numerator
  end

  def numerator
    @numerator
  end

  def denominator= (denominator)
    @denominator = denominator
  end

  def denominator
    @denominator
  end

  def to_f
    return @numerator.to_f / @denominator.to_f
  end

  def to_s
    return "#{@numerator}/#{@denominator}"
  end

  def lowest
   gcdivider = self.gcd(@numerator, @denominator)
   return Fraction.new (@numerator/gcdivider) , (@denominator/gcdivider)
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

end

f = Fraction.new 20, 60
puts f.numerator
puts f.denominator
puts f.to_s
puts f.lowest.to_s
puts f.numerator = 50
puts f.denominator = 100
puts f.to_s
puts f.to_f
