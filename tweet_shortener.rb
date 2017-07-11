# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (string)
  newary = string.split(" ")
  newary.each_with_index do |word, x|
    if dictionary.keys.include?(word.downcase)
      newary[x] = dictionary[word.downcase]
    end
  end
  newary.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |string|
    string = word_substituter(string)
    puts string
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  newstring = selective_tweet_shortener(string)
  if newstring.length > 140
    newstring[0...137] + "..."
    newstring[0...140]
  else
    selective_tweet_shortener(string)
  end
end
