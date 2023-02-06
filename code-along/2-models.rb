# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
puts "There are #{Company.all.count} companies"
new_company = Company.new

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "California"
new_company["url"] = "apple.com"

new_company.save
puts "There are #{Company.all.count} companies"

cali_companies = Company.where({"state"=> "California"})[0]
puts cali_companies["name"]


cali_companies = Company.find_by({"state"=> "California"})
puts cali_companies["name"]

# 3. query companies table to find all row with California company

# 4. query companies table to find single row for Apple

# 5. read a row's column value

# 6. update a row's column value

apple = Company.find_by({"name" => "Apple"})
apple["url"] = "www.apple.com"
apple.save


# 7. delete a row
