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

  new_hash = {
    "get_meaning" =>get_meaning,
    "get_emoticon" =>get_emoticon
  }
  return new_hash
end

def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  return library["get_emoticon"][emoticon] ||= "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path,emoticon)
  library = load_library(file_path)
  return library["get_meaning"][emoticon] ||= "Sorry, that emoticon was not found"
end

puts "un-bind"
