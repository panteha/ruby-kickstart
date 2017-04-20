# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_arr = string.downcase.split("")
	sec_arr = []
	for i in 0..new_arr.count
		if new_arr[i] == "r" 
			sec_arr.push(new_arr[i+1])
		end
	end
	sec_arr.join
end
