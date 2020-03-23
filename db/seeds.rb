require 'httparty'
require 'json'
require 'pry'

# bob = Volunteer.new("Bob Wu")
# ruby = Volunteer.new("Ruby Rails")

response = HTTParty.get("https://data.cityofnewyork.us/resource/shpd-5q9m.json")
databasearray = JSON.parse(response.body)

# opportunity
opportunity = databasearray.map do |org|
    org["opportunity_id"]
end

# requirements
# SANITIZE HTML TAGS
requirements = databasearray.map do |org| 
    org["requirements"]
end


content = databasearray.map do |org|
    org["content_id"]
end

 summary = databasearray.map do |org|
    org["summary"]
end

 url = databasearray.map do |org|
    org["website"]
end

street_address = databasearray.map do |org|
    org["street_address"]
end

city = databasearray.map do |org|
    org["city"]
end

state = databasearray.map do |org|
    org["state"]
end

postcode = databasearray.map do |org|
    org["postcode"]
end

