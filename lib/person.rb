# #require 'pry'
#
# class Person
#   attr_reader :happiness, :bank_account, :hygiene
#
# def initialize(name)
#   @name = name
#   @happiness = 8
#   @bank_account = 25
#   @hygiene = 8
# end
#
# # def name
# #   @name
# # end
#
# def bank_account=(amount)
# end
#
# def happiness=(points)
#   @happiness = points
#   if @happiness > 10
#   @happiness = 10
# elsif @happiness < 0
#   @happiness = 0
#   end
# end
# #
# def hygiene=(index)
#   @hygiene=index
#   if @hygiene > 10
#   @hygiene = 10
# elsif @hygiene < 0
#   @hygiene = 0
#   end
# end
#
#
# #   attr_reader :name, :happiness
# #   attr_accessor :bank_account #,:happiness,:hygiene
# #
# #   def initialize(name)
# #     @name = name
# #     @happiness = 8
# #     #@bank_account = 25
# #     # @hygiene = 8
# #   end
# #
# #   def bank_account(amount=25)
# #     @bank_account=bank_account
# #   end
# # #setter
# #   def happiness(happiness)
# #     #@happiness=happiness
# #     if @happiness >  10
# #       @happiness = 10
# #     elsif @happiness < 0
# #       @happiness = 0
# #     else
# #       @happiness+=1
# #     end
# #   end
# end # of class
#
#
# #   def hygiene(index=8)
# #     @hygiene=index
# #     if @hygiene >  10
# #     @hygiene = 10
# #   elsif @hygiene < 0
# #     @hygiene = 0
# #   end
# #   end
# #
# #   def happy?
# #
# #   end
# #
# #   def clean?
# #   end
# #
# #   def get_paid
# #   end
# #
# #   def take_bath
# #   end
# #
# #   def work_out
# #   end
# #
# #   def call_friend
# #   end
# #
# #   def start_conversation
# #   end
# #
# #   # binding.pry
# #   # puts "hi"
# # end #end of class
# Molly Seither







# This is the very beginning of your direct message history with @Molly
#
# LauraAdam [1:54 PM]
# https://github.com/Whynotski/deploy-on-day-1/invitations
#
# Molly [5:44 PM]
require 'pry'
class Person

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

def initialize(name)
 @name = name
 @bank_account = 25
 @happiness = 8
 @hygiene = 8
end

#setter
def happiness=(original_happiness)
 @happiness = original_happiness
 if @happiness > 10
   @happiness = 10
 elsif @happiness < 0
   @happiness = 0
 end
end

def hygiene=(original_hygiene)
 @hygiene = original_hygiene
 if @hygiene > 10
   @hygiene = 10
 elsif @hygiene < 0
   @hygiene = 0
 end
end

def happy?
 happiness > 7
end

def clean?
 hygiene > 7
end

#accept a salary amount
#add this to the person's bank account.
#return the string "all about the benjamins".
def get_paid(salary)
 self.bank_account += salary
 return "all about the benjamins"
end

def take_bath
 self.hygiene += 4
 return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
 self.happiness += 2
 self.hygiene -= 3
 return "♪ another one bites the dust ♫"
end

def call_friend(friend)
 self.happiness += 3
 friend.happiness += 3
 return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
 if topic == "politics"
   person.happiness -= 2
   self.happiness -= 2
   return "blah blah partisan blah lobbyist"
 elsif topic == "weather"
   person.happiness += 1
   self.happiness += 1
   return "blah blah sun blah rain"
 else
   return "blah blah blah blah blah"
 end
end

end
