class Car < Vehicle
  def initialized(color,name,gas,nenpi=20,maximum_tank = 40)
    super(color,name)
    @gas = gas
    # nenpiはkm/l
    @nenpi = nenpi
    @maximum_tank = maximum_tank
  end

  def run(km)
    @gas-km/@nenpi < 0 ? @gas -= km/@nenpi;puts("#{km}km走りました。") : puts('ガソリンが足りません')
    puts("残りのガソリン:#{@gas}l")
  end

  def refuel(litre)
    @gas+litre<=@maximum_tank ? @gas += litre;puts("給油が完了しました。") : @gas=@maximum_tank;puts("満タンまで給油しました。")
    puts("#{@name}のガソリン量:#{@gas}")
  end
end
