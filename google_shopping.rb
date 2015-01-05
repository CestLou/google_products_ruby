#RUBY!! no more semi-colons... ever.

require 'json'
file = File.read("./products.json")

#Welcome to RUBY we use snake case now
#snake case word_word not camel case wordWord
google_data = JSON.parse(file)


#outputs the full object
puts google_data.inspect

#outputs the first item's title
puts google_data["items"][0]["product"]["title"]

# 1.) The `kind` of results you're are dealing  are `shopping#products`. Go through the `items` and find all results that have `kind` of `shopping#product`. How many are there? Where else is this count information stored in the search results?

items = google_data['items']
shopping_products = items.select {|item| item['kind'] == 'shopping#product'}

shopping_products.each do |data|
	puts data
	puts '---' * 5
end
# 2.) Find all items with a `backorder` availability in `inventories`.




# 3.) Find all items with more than one image link.




# 4.) Find all `canon` products in the items (careful with case sensitivity).




# 5.) Find all `items` that have **product** **author** **name** of "eBay" and are brand "Canon".




# 6.) Print all the products with their **brand**, **price**, and a **image link**



