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
 