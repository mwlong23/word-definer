class Word
 attr_accessor :vocabulary_word, :definition
 attr_reader :id
  @@list = []

  def initialize(attributes)
    @vocabulary_word = attributes.fetch(:vocabulary_word)
    @definition = [attributes.fetch(:definition)]
   @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save ()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end
  
  def self.find(id)
    word_id = id.to_i
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end
end
