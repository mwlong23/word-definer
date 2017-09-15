class Word

 @@list = []
 attr_accessor :vocabulary_word, :definition
 attr_reader :id

 def initialize(vocabulary_word, definition)
   @vocabulary_word = vocabulary_word
   @definition = definition
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
end
