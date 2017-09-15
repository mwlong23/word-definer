class Word

  @@list = []
 attr_accessor :word, :definition

 def initialize(word, definition)
   @word = word
   @definition = definition
 end

 def self.all()
   @@list
 end
 def save ()
   @@list.push(self)
 end

end
