class Book
    # Getter for title, gets book.title
    def title
        @title
    end

    #Setter for title
    def title=(title)
        bl = ["and", "the", "a", "an", "for", "of", "in"]

        words = title.split(" ")

        words.each_with_index do |word, i|
            if i == 0
                words[i] = word.capitalize
            end

            next if i == 0

            isBl = false
            bl.each do |bl|
                if bl == word
                    isBl = true
                end
            end

            if isBl == false
                words[i] = word.capitalize
            end

        end

        @title = words.join(" ")
    end
end
