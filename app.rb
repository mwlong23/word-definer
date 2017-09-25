require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')


get('/') do
  @list = Word.all()
  erb(:list)
end

post('/') do
  vocabulary_word = params.fetch('vocabulary_word')
  definition = params.fetch('definition')
  new_vocab_word = Word.new({:vocabulary_word => vocabulary_word, :definition => definition, :id => nil})
  new_vocab_word.save()
  @list = Word.all()
  erb(:list)
end

get('/words/:id') do
  @word = Word.find(params.fetch(:id))

  erb(:individual_word)
end

post('/words/:id') do

  @word = Word.find(2)

  added_definition = params.fetch(:definition)

  @definitions = @word.definition.push(added_definition)

  erb(:individual_word)
end
