dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (sentence, dictionary)
  coincidence = Hash.new(0)
  words = sentence.downcase!.split(" ")
  words.each do |word|
    dictionary.each do |dict|
      if word.include?(dict)
        coincidence[dict] += 1
      end
    end
  end
  sortedHash = coincidence.sort.to_h
  puts sortedHash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)


