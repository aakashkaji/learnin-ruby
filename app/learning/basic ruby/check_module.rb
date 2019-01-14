
require 'yaml'

module CheckModule

  class Aakash

    def initialize
      @variable = "class define within module"
      @data = []

    end

    # load yml file and read data from it
    def load_yaml_file
      unless File.exist?('first.yml')
        puts "file does not exist"
      end
      @data = YAML.load_file('first.yml')
      puts @data

    end
    def save_account_details
      first_name = "Tim"
      last_name = "Knight"
      address = "356 Street"
      @your_account = [first_name, last_name, address]

      File.open("first.yml", "r+") do |f|
        f.write(@your_account.to_yaml)
      end
    end
  end


end

c =  CheckModule::Aakash.new()

c.load_yaml_file
