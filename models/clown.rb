require 'pry'
class Clown
attr_accessor :name, :skill
attr_reader :age, :fears
  @@all = [] 
  @@names = []
  def initialize(name, age, skill, fears=nil)
    @name = name
    @age = age
    @skill = skill
    @fears = fears
    
    @@all << self
    @@names << name
  end 

  def self.all
    @@all
  end 

  def self.names  
    @@names
  end 

  def new_name(name)
    @name 
    @@names << @name 
  end 

  def new_skill(skill)
    @skill = "Hankies"
  end 

  def lie_about_age(age)
    @age = 40
  end 

  def overcome_fears
    @fears = nil
  end 

  def clown_say_hi
    "Hello my name is #{@name}. I'm #{@age} years old. I'm good at #{@skill} and terrified of #{@fears}."
  end

  def self.find_by_name(name)
     Clown.all.find do |names| 
      names.name == name
    end  
  end 

  def self.oldest
    Clown.all.max_by do |x|
      x.age
    end 
  end 

  def self.fearless
    Clown.all.select do |x|
      x.fears == nil
    end 

  end 


end

x = Clown.new("Krusty", 66, "candy ", "camels")
y = Clown.new("Bozo", 33, "cats", "boots")
z = Clown.new("Bill", 23, "Amazon")

binding.pry
0

