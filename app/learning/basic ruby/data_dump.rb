require 'mongo'

class DataDump


  # this methods dump data in mongo db
  #
  def self.mongo_connect

    begin
      # db = Mongo::Connection.new("localhost", 27017).db("mydb")
      client = Mongo::Client.new([ 'localhost:27017' ], :database => 'mydb')
      collection = client[:profile]
      doc = {"name" => "vishal", "phone" => "9810886510"}
      c= collection.insert_one(doc)
      puts "hello"
    rescue StandardError => e
      puts e
      puts "excepption occurs"

    end


  end
end

v = {aakash: [1,2,3]}

print v[:aakash]