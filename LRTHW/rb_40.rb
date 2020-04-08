class Song

    def initialize(lyrics)
        @lyrics = lyrics
    end

    def sing_me_a_song()
        @lyrics.each {|line| puts line }
    end
end

class Check

    def initialize()
        @book = "this is the check.book" 
    end
    
    attr_reader :book
    
    def what()
        puts "this is check, who you"
    end
end

happy_bday = Song.new(["Happy birthday to you",
            "I don't want to get sued",
            "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
                "With pockets full of shells"])


test_check = Check.new

test_check.what

puts test_check.book

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
