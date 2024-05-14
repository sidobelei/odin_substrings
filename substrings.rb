def substrings (phrase, dictionary)
    phrase = phrase.downcase.gsub(/[,!?.]/, "")
    word_frequency = dictionary.reduce(Hash.new(0)) do |word_frequency, word|
        if phrase.include?(word)
            word_frequency[word] += 1
        end
        word_frequency 
    end
    puts word_frequency
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("b.e,l!o?w", dictionary)