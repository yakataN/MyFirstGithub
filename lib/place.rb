class Place
  # 簡単のため、電車で1区間の所だけにする
  PLACES = [:ochanomizu, :tokyo, :akihabara]
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def near
    @near = PLACES.find_all {|item| @name != item }
  end

  def explain
    self.near
    text = <<~"TEXT"
    ここは#{@name}です。
    近くには#{@near.join(",")}があります。自転車や電車で移動できます。
    TEXT
  end

  # trainのゲートの役割も持たせる
  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    true
  end
end
