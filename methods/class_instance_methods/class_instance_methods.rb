class Event
  attr_accessor :name, :date

  def initialize(name, date)
    @name = name
    @date = date
  end

  # This is a class method that is used on the class only, use it when you want to do something on the main object, such as returning multiple instances of the object
  def self.upcoming
    # Give me all the events where the date is after today
    where("date >= ?", Date.today)
  end

  # This is an instance method, use this when you want to do something to one instance of the object, such as returning the details of a spesific event
  def details
    puts "#{@name}, #{@date}"
  end
end

# Let's create some events and save them in our database
# `.create` = `.new` & `.save`
wireless = Event.create(name: "Wireless Festival", date: Date.yesterday)
arsenal_v_manu = Event.create(name: "Arsenal vs Manchester United", date: Date.tomorrow)
bbq = Event.create(name: "bbq", date: Date.today)

Event.upcoming
=> [arsenal_v_manu, bbq]
