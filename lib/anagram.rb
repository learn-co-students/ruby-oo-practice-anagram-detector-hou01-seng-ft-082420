class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
        @word_array =  (@word.split("")).sort
    end

    def match(array)
        final_array = []
        count = 0
        new_array = array.collect {|word| (word.split("")).sort}
        new_array.each do |word|
            if word == @word_array
                final_array << array[count]
            end
            count +=1
        end
        final_array
    end

end