def find_substrings(string, substring_dictionary)
  substring_dictionary.reduce(Hash.new(0)) do |result, substring|
    substring_regex = /#{Regexp.quote(substring)}/
    occurrences_count = string.scan(substring_regex).length
    result[substring] = occurrences_count if occurrences_count.positive?
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print find_substrings("Howdy partner, sit down! How's it going?", dictionary)
