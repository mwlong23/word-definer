require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('seeing the definitions for a single word', {:type => :feature}) do
  it('allows a user to see a word they just entered into their list of words') do
    test_word = Word.new({:vocabulary_word => "vocabulary_word", :definition => "A definition for a vocab word", :id => nil})
    test_word.save()
    visit('/')
    expect(page).to have_content(test_word.vocabulary_word)
  end
end
# describe('clicking on an entered word and definition to reveal that words definition', {:type => :feature}) do
#   it('allows a user to click a word to see the definitions for it') do
#     test_word = Word.new({:vocabulary_word => "vocabulary_word", :definition => "A definition for a vocab word", :id => nil})
#     test_word.save()
#     test_word2 = Word.new({:vocabulary_word => "A second vocabulary_word", :definition => "A second definition for a vocab word", :id => nil})
#     test_word2.save()
#     visit("/words/#{test_word.id()}")
#     expect(page).to have_content(test_word.definition)
#     expect(page).to have_content(test_word.vocabulary_word)
#   end
# end
describe(".find" , {:type => :feature}) do
  it("returns a word by its ID") do
    test_word = Word.new({:vocabulary_word => "12312vocabulary_word", :definition => "A definition for a vocab word", :id => nil})
    test_word.save()
    test_word2 = Word.new({:vocabulary_word => "A second vocabulary_word", :definition => "A second definition for a vocab word", :id => nil})
    test_word2.save()
    expect(Word.find(test_word2.id())).to(eq(test_word2))
  end
end
# describe('adding words to a list', {:type => :feature}) do
#   it('allows a user to add a word to a list of vocab words') do
#     test_word = Word.new({:vocabulary_word => "vocabulary_word", :definition => "A definition for a vocab word", :id => nil})
#     test_word.save()
#     visit("/words/#{test_word.id()}")
#     fill_in("definition", {:with => "a second definition"})
#     visit("/words/#{test_word.id()}")
#     expect(page).to have_content("a second definition")
#   end
# end
#
# describe("#definitions") do
#     it("returns an array of tasks for that list") do
#       test_word = Word.new({:vocabulary_word => "vocabulary_word", :definition => "A definition for a vocab word", :id => nil})
#       test_word.save()
#       test_word2 = Word.new({:vocabulary_word => "A second vocabulary_word", :definition => "A second definition for a vocab word", :id => nil})
#       test_word2.save()
#       test_task2 = Task.new({:description => "Review Ruby", :list_id => test_list.id()})
#       test_word3.save()
#       expect(test_list.tasks()).to(eq([test_task, test_task2]))
#     end
#   end
