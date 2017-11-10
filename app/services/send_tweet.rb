class SendTweet

def initialize(tweet)
	@tweet = tweet
end

def log_in_to_twitter
	  @client = Twitter::REST::Client.new do |config|
          config.consumer_key        = Figaro.env.pusher_key
          config.consumer_secret     = Figaro.env.pusher_secret
          config.access_token        = Figaro.env.stripe_api_key
          config.access_token_secret = Figaro.env.stripe_publishable_key
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


