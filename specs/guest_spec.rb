require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../karaoke_bar.rb')

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Matthew Williams", 25, 50)
    @guest2 = Guest.new("Vicky Robinson", 24, 60)
    @guest3 = Guest.new("Josh Andrew", 25, 50)
    @guest4 = Guest.new("Nicole Burton", 24, 60)
    @karaoke_bar1 = Karaoke_bar.new(2,1)

  end


  def test_guest_has_name
    assert_equal("Vicky Robinson", @guest2.name())
  end



  def test_guest_has_age
    assert_equal(25, @guest3.age())
  end




  def test_pay_entry_fee
    @guest2.pay_entry_fee(@karaoke_bar1)
    assert_equal(58, @guest2.wallet())
  end

end
