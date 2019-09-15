class Guest

  attr_reader :name, :age, :wallet

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet

  end

  def pay_entry_fee(karaoke_bar)
    @wallet -= karaoke_bar.entry_fee

  end


  def buy(drink)
  @wallet -= drink.price
  end

end
