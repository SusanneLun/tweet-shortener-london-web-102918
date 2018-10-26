def dictionary
  dictionary = {
    :hello => "hi", 
  :to => "2" 
  :two => "2"
  :too => "2"
  :for => "4"
  :four => "4"
  :be => "b"
  :you => "u"
  :at => "@"
  :and => "&"
  }
end


def word_substituter(tweets)
  tweets = []
  subtweets = []
  tweets.each do |key, value| 
    if key == dictionary[key] subtweets << dictionary[key][value]
   end
  end 
  return subtweets.to_s 
end

def word_substituter(tweet)
  output_array = [] # creating an empty array in which to dumb the output	  output_array = [] # creating an empty array in which to dumb the output
  # assume tweet is a regular sentence	  # assumes tweet is a regular sentence
  output_tweet = tweet.split(" ") # returns an array	  # split returns an array, then we iterate over the array
  output_array = output_tweet.collect do |word| # iterate over the array	  # this is ideal for a ternary 
    if substitutes.keys.include?(word) 	  output_array = (tweet.split(" ").collect {|word| substitutes.keys.include?(word) ? substitutes[word] : word }).join(" ")
      word = substitutes[word]	
    else	
      word	
    end	
  end	
  output_array.join(" ") # convert it back from array into string	
end	end
 