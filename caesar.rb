def caesar_cipher(phrase, shift)
  i = 0
  crypted = ""
  az = ('a'..'z').to_a
  word = phrase.split('')
  wordInd = word.map { |char| char.ord - 97  }
  while i < wordInd.length do
    if wordInd[i] == -65 
      crypted+= " "
    else 
      pos = wordInd[i] + shift
      if pos > 25
        pos = pos - 26
      end
      crypted += "#{az[pos]}"
    end
    i = i + 1
  end
  puts crypted
end

caesar_cipher("hello world",5)