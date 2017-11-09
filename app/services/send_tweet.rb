class SendTweet

def initialize(tweet)
	@tweet = tweet
end

def log_in_to_twitter
	  @client = Twitter::REST::Client.new do |config|
      config.consumer_key = "tcZV6RLb21LMtA0ZlbO8fFLIi" 
 	  config.consumer_secret = "eEyaysbiLXQFATbqexsbc7rBBRO6JsnFyvgXclX6NvVNjsbtRD" 
 	  config.access_token = "918040666659282944-Knu1vLhygUBcxQLau1W6QRhE3mihJpg" 
 	  config.access_token_secret = "VESIHxYQBjlKwzqJ6LdpMzG6Jwv1Im6QMJXZkOiJP7v5K" 
  end
end

def send_tweet
	@client.update(@tweet)
end

def perform
	log_in_to_twitter
    send_tweet
end

end


