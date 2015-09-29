# coding: utf-8
require 'twitter'
require 'net/http'
require '~/myscripts/keys.rb'

config = {
  :consumer_key => CONSUMER_KEY,
  :consumer_secret => CONSUMER_SECRET,
  :access_token => ACCESS_TOKEN,
  :access_token_secret => ACCESS_TOKEN_SECRET,
}

def popdata(status)
  test = {}
  test["status_id"] = status.id
  test["update_name"] = status.text
  test["screen_name"] = status.user.screen_name
  test["user_protected?"] = status.user.protected?
  p test
end


client = Twitter::Streaming::Client.new(config)
client.user do |status|

  if status.is_a?(Twitter::Tweet)
    next if status.text.start_with? "RT","@","＠" || status.text =~ /[@＠]/
    # p status.user.protected?
    
    url = URI.parse('http://localhost:3000/update_name')
    p status.user.id
      begin
        # Net::HTTP.post_form(url,popdata(status))
      rescue => e
        p "timeout"
        p e.message
      ensure
        next
      end
    if status.text.end_with?("っちー")

    end
  end
end





# # Net::HTTP.get_print(url)
# p res

