def substrings (phrase, dictionary)
    phrase = phrase.downcase.gsub(/[,!?.]/, "").split(" ")
    word_frequency = dictionary.reduce(Hash.new(0)) do |word_frequency, entry|
        phrase.each do |word|
            if word.include?(entry)
                word_frequency[entry] += 1
            end
        end
        word_frequency 
    end
    puts word_frequency
end

# Uncomment below to get output and change parameters
#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("Howdy partner, sit down! How's it going?", dictionary)