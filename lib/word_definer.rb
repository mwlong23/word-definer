require('definition')
class Word

 @@list = []
 attr_accessor :vocabulary_word,  :definitions
 attr_reader :id

 def initialize(vocabulary_word)
   @vocabulary_word = vocabulary_word
  #  @definition = definition
   @definitions = []
   @id = @@list.length + 1
 end

 def self.all()
   @@list
 end

 def definitions
   @definitions
 end
 def add_definition(new_definition)
   definition_entry = Definition.new(new_definition)
   new_definition_string = definition_entry.definition.to_s
   definitions.push(new_definition_string)
 end

def id
  @id
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
