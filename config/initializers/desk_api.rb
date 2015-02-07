require "oauth"

consumerKey = 'o6Z35NLWuT68DQmn54w'
consumerSecret = 'iD0SADTSudAr9wyoRrq5qSdSWDmLH89Je8LgOlBI'

accessToken = 'tMPq8iaaoqvD3UvL0Cvb'
accessTokenSecret = 'y3JpmLAP9NxIL0dLJKrIUUtHSjyOKlPYIClmWX0H'

myDeskUrl = 'https://purpleundulations.desk.com'

API = "#{myDeskUrl}/api/v2"

consumer = OAuth::Consumer.new(
        consumerKey,
        consumerSecret,
        :site => myDeskUrl,
        :scheme => :header
)

ACCESS_TOKEN = OAuth::AccessToken.from_hash(
        consumer,
        :oauth_token => accessToken,
        :oauth_token_secret => accessTokenSecret
)

