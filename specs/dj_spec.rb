require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../karaoke_bar.rb')
require_relative('../dj.rb')

class DjTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Spinning Around", "Kylie Minogue", "pop", 3.27, "I'm spinning around, move out of my way")
    @song2 = Song.new("Higher Love", "Kygo & Whitney Houston", "pop", 3.48, "Bring me a higher love, where's that higher love I keep thinking of")
    @song3 = Song.new("Dancing Queen", "Abba", "pop", 3.51, "You are the dancing queen, young and sweet only seventeen")
    @song4 = Song.new("Girls Just Want To Have Fun", "Cyndi Lauper", "pop", 3.56, "But girls they want to have fun, girls just want to have")
    @song5 = Song.new("Let Me Entertain You", "Robbie Williams", "pop", 4.23, "So come on let me entertain you")
    @song6 = Song.new("We Will Rock You", "Queen", "rock", 2.02, "We will, we will rock you")
    @song7 = Song.new("Sweet Child O' Mine", "Guns n' Roses", "rock", 5.55, "Sweet child of mine, sweet love of mine")
    @song8 = Song.new("Smoke On The Water", "Deep Purple", "rock", 3.47, "Smoke on the water, fire in the sky")
    @song9 = Song.new("Stairway To Heaven", "Led Zeppelin", "rock", 8.05, "And she's buying a stairway to heaven")
    @song10 = Song.new("All Right Now", "Free", "rock", 3.48, "All right now, baby it's all right now")

    @song_list1 = [@song1, @song2, @song3, @song4]
    @song_list2 = [@song6, @song7, @song8, @song9, @song10]
    @room1 = Room.new(3, @song_list1, "pop")
    @room2 = Room.new(3, @song_list2, "rock")
    @guest1 = Guest.new("Matthew Williams", 25, 50)
    @guest2 = Guest.new("Vicky Robinson", 24, 60)
    @guest3 = Guest.new("Josh Andrew", 25, 50)
    @guest4 = Guest.new("Nicole Burton", 24, 60)
    @dj1 = Dj.new("DJ Ruby", 30)
    @dj2 = Dj.new("DJ Java", 25)
  end


  def test_dj_name
  assert_equal("DJ Ruby", @dj1.name)
  assert_equal("DJ Java", @dj2.name)
  end


end
