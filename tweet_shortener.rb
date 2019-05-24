# Write your code here.

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  replace = dictionary()
  tweet_array = tweet.split
  new_w_arr = []

  tweet_array.each do |w|
    if replace.key?(w)
      new_w_arr.push(replace[w])
    else
      new_w_arr.push(w)
    end

  end

  tweet_returned = new_w_arr.join(" ")
  tweet_returned
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet_arr)
  array = [tweet_arr]
  array.collect do |i|
    if i.length > 140
      puts word_substituter(i)
    elsif i.length < 130
      puts i
    else
      puts i
    end
  end
end
