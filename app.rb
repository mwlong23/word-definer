require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')


get('/') do
  @list = Word.all()
  erb(:list)
end

post('/') do
  vocabulary_word = params['vocabulary_word']
  definition = params['definition']
  new_vocab_word = Word.new(vocabulary_word)
  new_definition = new_vocab_word.add_definition(definition)
  new_vocab_word.save()
  @list = Word.all()
  erb(:list)
end

get('/words/:id') do
  @word = Word.find(params[:id])
  erb(:individual_word)
end

# post('/words/:id') do
#   @word = Word.find(params[:id])
#   new_definition = params['new-definition']
#   erb(:individual_word)
# end

# get('/words/:id') do
#   another_definition = params['another-definition']
#   new_definition = Definition.new
#   new_definition.save
#   @definitions
#
# end
