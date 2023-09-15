# your code goes here
class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
  
    def happiness
      @happiness = 0 if @happiness <0
      @happiness = 10 if @happiness >10
      @happiness
    end

    def hygiene 
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene >10
        @hygiene
    end
 
    def happy?
        @happiness > 7? true : false
    end

    def clean?
        @hygiene > 7? true : false
    end

    def get_paid(amount)
         @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath(salary = 4)
       self.hygiene= @hygiene += salary
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene =@hygiene - 3
        self.happiness = @happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3 
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation( friend, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            self.happiness
            friend.happiness 
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            self.happiness
            friend.happiness
            return 'blah blah sun blah rain'
        else 
            return"blah blah blah blah blah"
        end
    end

end
