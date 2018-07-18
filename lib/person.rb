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

  # end
  #
  # it "never makes either party less than 0 points happy (never negative)
  #   (hint: use your #happiness= method)" do
  #   people.each  { |person| person.happiness = 1 }
  #   penelope.start_conversation(felix, "politics")
  #   people.each  do |person|
  #     expect(person.happiness).to be >= 0
  #     expect(person.happiness).to eq(0)
  #   e

end
