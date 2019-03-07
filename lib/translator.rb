require 'pry'
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  new_hash = {
    get_meaning:get_meaning,
    get_emoticon:get_emoticon
  }
  # binding.pry
  # puts "un-bind"
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts "un-bind"
