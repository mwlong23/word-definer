require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  @list = Word.all()
  erb(:list)
end

post('/') do
  word = params['word']
  definition = params['definition']
  vocab_word = Word.new(word, definition)
  vocab_word.save()
  @list = Word.all()
  erb(:list)
end
