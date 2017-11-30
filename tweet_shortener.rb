def dictionary
  {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'you' => 'u',
    'at' => '@',
    'and' => '?',
    'be' => 'b'
  }
end

def word_substituter(tweet)
  new_tweet = []
  tweet.split(' ').map do |word|
    dictionary.each do |key, val|
      if key == word
        word = val
      end
    end
    new_tweet << word
  end
  new_tweet.join(' ')
end
