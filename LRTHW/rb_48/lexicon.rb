class Lexicon
    @@types = {direction: ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back'],
      verb: ['go', 'stop', 'kill', 'eat'],
      stop: ['the', 'in', 'of', 'from', 'at', 'it', 'is', 'a'],
      noun: ['door', 'bear', 'princess', 'cabinet'],
    }

  def self.scan(sentence)
    result = []
    words = sentence.split
    words.each do |word|
      if word.match?(/\A-?\d+\Z/)
        result.push(['number', Integer(word)])
        next
      end
      @@types.keys.each do |key|
        if @@types[key].include? word.downcase
          result.push([key.to_s, word])
        end
      end
      if result.empty? 
        result.push(['error', word])
      elsif !result[-1].include? word
        result.push(['error', word])
      end
    end
    
    return result
  end
end
