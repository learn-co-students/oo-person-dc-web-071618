# your code goes hererequire 'pry'

class Person

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def bank_account=(new_amount)
    @bank_account = new_amount
  end

  def happiness=(new_amount)
    if new_amount > 10
      @happiness = 10
    elsif new_amount < 0
      @happiness = 0
    else
      @happiness = new_amount
    end
    @happiness
  end

  def hygiene=(new_amount)
    if new_amount > 10
      @hygiene = 10
    elsif new_amount < 0
      @hygiene = 0
    else
      @hygiene = new_amount
    end
    @hygiene
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end
  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -3)
    self.happiness=(@happiness + 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness + 3)
    friend.happiness=(friend.happiness + 3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(@happiness - 2)
      person.happiness=(person.happiness - 2)
      return 'blah blah partisan blah lobbyist'

    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      person.happiness=(person.happiness + 1)
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
