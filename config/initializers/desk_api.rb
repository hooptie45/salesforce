require "oauth"

consumerKey = 'o6Z35NLWuT68DQmn54w'
consumerSecret = 'iD0SADTSudAr9wyoRrq5qSdSWDmLH89Je8LgOlBI'

accessToken = 'tMPq8iaaoqvD3UvL0Cvb'
accessTokenSecret = 'y3JpmLAP9NxIL0dLJKrIUUtHSjyOKlPYIClmWX0H'

websiteUrl = 'https://agile-cove-6334.herokuapp.com/'
callbackUrl = 'https://agile-cove-6334.herokuapp.com/'
supportUrl = 'https://agile-cove-6334.herokuapp.com/'

consumer = OAuth::Consumer.new(
        consumerKey,
        consumerSecret,
        :site => 'https://purpleundulations.desk.com/',
        :scheme => :header
)

access_token = OAuth::AccessToken.from_hash(
        consumer,
        :oauth_token => accessToken,
        :oauth_token_secret => accessTokenSecret
)

response = access_token.get("https://purpleundulations.desk.com/api/v2/users/current")

puts response.body