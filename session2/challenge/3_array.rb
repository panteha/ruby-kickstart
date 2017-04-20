# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    return "" if self == ""
    new_string = ""
    self.size.times do |index|
      next if index.odd?
      new_string << self[index]
    end
    return new_string
  end
end
