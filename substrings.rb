def substrings(string, dictionary)
  string.downcase!
  string_array = string.split('')
  matches = {}
  string_array.each_index do |first_index|
    string_array.each_index do |second_index|
      substring = string_array[second_index..first_index].join
      if dictionary.include?(substring)
        matches[substring] += 1 if matches.include?(substring)
        matches[substring] = 1 if not matches.include?(substring)
      end
    end
  end
  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)