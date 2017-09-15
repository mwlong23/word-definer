require 'rspec'
require 'word_definer'


describe('.all') do
  it 'is empty at first' do
    expect(Word.all()).to(eq([]))
  end
end
describe('#save') do
  it('saves a word and adds it to a list of words') do
    word = Word.new("eagle","a large bird of prey with a massive hooked bil" )
    word.save()
    expect(Word.all()).to(eq([word]))
  end
end
describe('.clear') do
    it('clears all items from the list of definitions') do
    word = Word.new("eagle","a large bird of prey with a massive hooked bil" )
    word.save()
    Item.clear()
    expect(Word.all()).to(eq([]))
  end
end
describe('Word') do
  it'takes a word and an array that contains all words' do
    expect().to(eq())
  end
end
