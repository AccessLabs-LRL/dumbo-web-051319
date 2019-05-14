require 'pry'
require 'rest-client'
require 'json'


# I tell this app a book theme and I get back a list of books (title, author, description)

# Terminal should prompt us by saying "enter a book theme!"
puts "Yo, tell us any book theme that interests you!"
# get input from our user
user_input = gets.chomp
# get our books from our api based on users input
# make a new url based on users input
url = "https://www.googleapis.com/books/v1/volumes?q=#{user_input}"

# take that new url and get our data from our google api
response = RestClient.get url

# parse the response into ruby
response_hash = JSON.parse response.body

books = response_hash["items"]
# figure out how the heck to get our books from the parsed response

# find one book and display it
puts "Hey there, were back from the internet, and found these books for you!"


# loop through all books and display them

books.each do |book_hash|
  # - title
  puts ""
  puts "title:"
  puts book_hash["volumeInfo"]["title"]
  # - authors
  puts ""
  puts "authors:"
  puts book_hash["volumeInfo"]["authors"]
  # - description
  puts ""
  puts "description:"
  puts book_hash["volumeInfo"]["description"]

  puts "📚" * 25

end







# * BONUS:
# return the first book and get more when the user tells us




# binding.pry
