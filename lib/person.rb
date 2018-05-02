class Person
  attr_reader :name
  attr_accessor :at

  def initialize(name,money=0)
    @name = name
    @money = money
  end

  def get_money(money)
    @money+=money
    # puts("#{money}円手に入れました。今の残金:#{@money}円")
  end

  def own(thing)
    thing.owner(@name)
  end

  # place classであることを期待

  # def at
  #   @at.name
  # end
end
