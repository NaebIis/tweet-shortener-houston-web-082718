require 'pry'

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |string|
    if tweet.length <= 140
      string
    else tweet.length > 140
      word_substituter(string)
    end
    
  end.join(" ")
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |string|
     if string.length > 140
      word_substituter(tweet[0...140] + "..."
  end
end.join(" ")
end
