# require "pry"

# list all the names that need to be sorted ----/
list = %w(Harry Ron Hermione Malfoy Ginny Sirius Voldemort Longbottom Snape)

class SortingHat

    def self.greeting(list)
        puts "I am the sorting hat."
        sort(list)
    end

    def self.sort(list)
    house ||= {"gryffindor" => [],
              "slytherin" => [],
              "hufflepuff" => [],
              "ravenclaw" => []}
    
    list.each do |title|
     @choice ||= %w(gryffindor slytherin hufflepuff ravenclaw)
     @choice.empty? ? @choice = %w(gryffindor slytherin hufflepuff ravenclaw) : @choice
     chosen = @choice.shuffle.pop
    
    puts title + " is being sorted."
    
    house["#{chosen}"] << title
    
    @choice.delete(chosen)
    
    sleep 2
    
    
    end
    
    sleep 1
    puts ""
    puts "---------------------"
    p "Gryffindor Team"
    puts house["gryffindor"]
    puts "---------------------"
    sleep 1
    p "Slytherin Team"
    puts house["slytherin"]
    puts "---------------------"
    sleep 1
    p "Hufflepuff Team"
    puts house["hufflepuff"]
    puts "---------------------"
    sleep 1
    p "Ravenclaw Team"
    puts house["ravenclaw"]
    puts "---------------------"
    end
end

SortingHat.greeting(list)