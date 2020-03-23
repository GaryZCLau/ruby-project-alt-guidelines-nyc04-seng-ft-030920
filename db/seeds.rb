require 'httparty'

response = HTTParty.get("https://data.cityofnewyork.us/resource/shpd-5q9m.json")
response.body