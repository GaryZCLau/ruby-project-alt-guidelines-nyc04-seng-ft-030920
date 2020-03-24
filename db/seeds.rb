require 'httparty'
require 'json'
require 'pry'

# bob = Volunteer.new("Bob Wu")
# ruby = Volunteer.new("Ruby Rails")

response = HTTParty.get("https://data.cityofnewyork.us/resource/shpd-5q9m.json")
databasearray = JSON.parse(response.body)



def organization
    counter = 0
    while counter < databasearray.length
        title = databasearray[counter]["title"]
        position = databasearray[counter]["opportunity_id"]
        #sanitize requirements
        requirements = databasearray[counter]["requirements"]
        content = databasearray[counter]["content_id"]
        summary = databasearray[counter]["summary"]
        url = databasearray[counter]["website"]
        street_address = databasearray[counter]["street_address"]
        city = databasearray[counter]["city"]
        state = databasearray[counter]["state"]
        postcode = databasearray[counter]["postcode"]
        organization[counter]= Organization.new(title, position, requirements, content, summary, url, street_address, city, state, postcode)
        counter += 1
    end
end

organization








binding.pry

    # t.string :title
    # t.string :position
    #   t.string :requirements
    #   t.text :content
    #   t.string :summary
    #   t.string :url
    #   t.string :street_address
    #   t.string :city
    #   t.string :state
    #   t.string :postcode


#organization
# organization = databasearray.each do |org|
#     org
# end

#position

# position = databasearray.map do |org|
#     org["opportunity_id"]
# end

# requirements
# SANITIZE HTML TAGS
# requirements = databasearray.map do |org| 
#     org["requirements"]
# end

# requirements = organization["requirements"]

# content = databasearray.map do |org|
#     org["content_id"]
# end

#  summary = databasearray.map do |org|
#     org["summary"]
# end

#  url = databasearray.map do |org|
#     org["website"]
# end

# street_address = databasearray.map do |org|
#     org["street_address"]
# end

# city = databasearray.map do |org|
#     org["city"]
# end

# state = databasearray.map do |org|
#     org["state"]
# end

# postcode = databasearray.map do |org|
#     org["postcode"]
# end


0