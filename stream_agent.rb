# coding: utf-8
require 'twitter'
require 'tweetstream'
require 'net/http'


def makedata()
  test = {}
  test["status_id"] = '12390-1237012'
  test["update_name"] = 'おっぱい'
  test["screen_name"] = 'うん犬'

  test
end

url = URI.parse('http://localhost:3000/update_name')


res = Net::HTTP.post_form(url,makedata())
# Net::HTTP.get_print(url)
p res

