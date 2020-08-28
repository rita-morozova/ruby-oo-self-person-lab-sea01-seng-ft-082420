require 'pry'
 
# your code goes here
class Person
  attr_accessor :happiness, :hygiene, :bank_account
  attr_reader :name

  def initialize (name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  def hygiene=(num)
      @hygiene = num
      if @hygiene > 10
          @hygiene = 10
      elsif @hygiene < 0
          @hygiene = 0
      end
  end

  def happiness=(num)
      @happiness = num
      if @happiness > 10
          @happiness = 10
      elsif @happiness < 0
          @happiness = 0
      end
  end

  def clean?
      @hygiene>7? true:false
  end


  def happy?
      @happiness>7? true:false
  end

  def get_paid (salary)
     self.bank_account += salary
      "all about the benjamins"
  end


  def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
  end


  def call_friend(friend)
    friend.happiness +=3
    self.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  

  def start_conversation(person, topic)
      if topic == "politics"
          person.happiness -=2
          self.happiness -=2
          "blah blah partisan blah lobbyist"
      elsif topic == "weather"
          person.happiness +=1
          self.happiness +=1
          return "blah blah sun blah rain"
      else 
        return "blah blah blah blah blah"
      end
  end
binding.pry 

#   def start_conversation(person, topic)
#     objects = [self, person]
#     if topic == "politics"
#       objects.each { |o| o.happiness -= 2}
#       first, second = ["partisan", "lobbyist"]
#     elsif topic == "weather"
#       objects.each { |o| o.happiness += 1}
#       first, second = ["sun", "rain"]
#     end
#     first ||= "blah"
#     second ||= "blah"
#     base_string = "blah blah #{first} blah #{second}"
#   end

end