require 'rspec'
require 'word_definer'

describe('Item') do
  before() do
    Word.clear()
  end
  describe('.all') do
    it 'is empty at first' do
      expect(Word.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves a word and adds it to a list of words') do
      word = Word.new("eagle")
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end
  describe('.clear') do
      it('clears all items from the list of definitions') do
      word = Word.new("eagle")
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it 'increments id by 1 each time a vocab word is entered' do
      vocab_word1 = Word.new("eagle")
      vocab_word1.save()
      vocab_word2 = Word.new("beagle")
      vocab_word2.save()
      expect(vocab_word1.id).to(eq(1))
      expect(vocab_word2.id).to(eq(2))
    end
  end
  describe( '.find') do
    it 'finds a vocabulary word based on its id' do
      word1 = Word.new("eagle")
      word1.save()
      word2 = Word.new("beagle")
      word2.save()
      expect(Word.find(1)).to(eq(word1))
      expect(Word.find(2)).to(eq(word2))
    end
  end

  # 
  # describe('#add_definition') do
  #   it 'creates an additional definition for a word' do
  #     Word.clear()
  #     new_word = Word.new("spark")
  #     new_word.save
  #     new_definition1 = new_word.add_definition("squirrel")
  #
  #     new_definition2 = new_word.add_definition("tortis")
  #
  #     expect(new_word.definitions).to(eq([new_definition1,new_definition2]))
  #   end
  # end
  #


end
