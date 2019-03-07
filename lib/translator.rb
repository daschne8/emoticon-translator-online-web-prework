require 'pry'
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  meaning_array = library.keys
  emoticons_array = library.values
  get_meaning = {}
  get_emoticon = {}

  emoticons_array.each_with_index do |emoticons,index|
    get_meaning[emoticons[1]] = meaning_array[index]
  end

  emoticons_array.each do |emotes|
    get_emoticon[emotes[0]] = emotes[1]
  end

  # new_hash = {
  #   get_meaning:get_meaning,
  #   get_emoticon:get_emoticon
  # }
  binding.pry
  puts "un-bind"
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts "un-bind"
