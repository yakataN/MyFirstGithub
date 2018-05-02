class Person
  attr_reader :name, :at

  def initialize(name,at="Ochanomizu",money=0)
    @name = name
    @at = at
    @money = money
  end

  def get_money(money)
    @money+=money
    # puts("#{money}円手に入れました。今の残金:#{@money}円")
  end

  def own(thing)
    thing.owner(@name)
  end
end
