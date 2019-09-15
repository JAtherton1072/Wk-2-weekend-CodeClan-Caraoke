class Bar

  attr_reader :till, :stock, :room

  def initialize(till, stock, room)
    @till = till
    @stock = stock
    @room = room
    @drinks = []
  end



  def serve(guest,drink)
  guest.buy(drink)
  @till +=drink.price()
  end

  def add_drink(drink)
    @drinks << drink

  end





end
