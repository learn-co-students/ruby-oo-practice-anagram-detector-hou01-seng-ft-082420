class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
        @word_array =  (@word.split("")).sort
    end

    def match(array)
        final_array = []
        count = 0
        array.collect {|word| (word.split("")).sort}.each{|word|
            if word == @word_array
                final_array << array[count]
            end
            count +=1}
        final_array
    end
end
