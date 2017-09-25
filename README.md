# Word Definer

#### _Vocabulary words_

#### By Mitch Long, September 2017

## Description

_A Ruby App That Stores Vocabulary Words_

This application takes a word and a definition for a vocabulary word. each word and definition is added to a list.  Each vocabulary word can be clicked on to reveal the definition.  




## Setup/Installation Requirements

* No installation necessary, check out the app [here:](https://pacific-plateau-85728.herokuapp.com/)

## Specifications

* Program creates an empty array that stores vocabulary words.
  * example input: words = Word.all()
  * Example output: @@words = []
* Program stores a word and it's definition
  * Example: vocabulary_word = Word.new("eagle", "a large bird of prey with a massive hooked bil")
  * Example output: vocabulary_word.word = "eagle", vocabulary_word.definition = "a large bird of prey with a massive hooked bil"
* Program displays a list of vocabulary words to the page once they are entered.
  * Example input: Enter a word: "eagle", enter a definition: "a large bird of prey with a massive hooked bil"
  * Example output: page displays "eagle"
* Program can store all words, definitions and id's in an array
  * Example input: Word.all
  * Example output: [word1,word2,word3...]
* Program can save a new definition
  * Example input: new_word = Word.new({:word => turkey, :definition => a large bird, :id => nil})
  * Example output: new_word. word = turkey, new_word.definition = "a large bird", new_word.id = 1
* Program can clear all words in the list
  * Example input: Word.clear
  * Example output: @@list = []
* Program can assign a new id to every new instance of Word
  * Example input: new_word = Word.new({:word => turkey, :definition => a large bird, :id => nil})
  * Example output: new_word.id = 1
* Program finds a word based on it's id
  * Example input: Word.find(vocab_word.id)
  * Example output: vocab_word


## Support and contact details

_Please contact [meechllada@gmail.com](mailto:meechllada@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Sinatra
* RSPEC

### License

Copyright (c) 2017 **Mitch Long**

*This software is licensed under the MIT license.*
