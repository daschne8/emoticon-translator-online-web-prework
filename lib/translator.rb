require 'pry'
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  get_meaning = library.keys
  get_emoticon = library.values
  #return get_meaning,get_emoticon
  binding.pry
  puts "un-bind"
  return library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts "un-bind"
