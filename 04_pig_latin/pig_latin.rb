def translate string
    vowels = ["a", "e", "i", "o", "u"]

    words = string.split (" ")
    words.each_with_index do |word, i|
        result = ""
        word = word.split("")
        wtopg = false

        # Rearranges each word in string
        word.each_with_index do |char, j|
            vowels.each do |vowel|
                # Checks for vowel case
                if j == 0 && char == vowel
                    result = result + word.join("") + "ay"
                    words[i] = result
                    wtopg = true
                end
                # Skips iteration if word is already modified
                next if wtopg == true
                
                # Checks for 'qu' case
                if char == "q" && word[j + 1] == "u"
                    # Checks if 'qu' is preceded by a consonant
                    if j != 0 
                        result = result + word[(j + 2)..-1].join("") + word[0..(j - 1)].join("") + "quay"
                    else
                        result = result + word[2..-1].join("") + "quay"
                    end
                    words[i] = result
                    wtopg = true
                end
                # Skips iteration if word is already modified
                next if wtopg == true

                # Checks for consonant case
                if j != 0 && char == vowel
                    result = word[j..-1].join("") + word[0..j - 1].join("") + "ay"
                    words[i] = result
                    wtopg = true
                end
            end
        end
    end

    words.join(" ")
end