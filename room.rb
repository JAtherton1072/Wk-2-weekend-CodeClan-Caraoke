class Room

  attr_reader :capacity, :songs, :type

  def initialize(capacity, songs, type)
    @capacity = capacity
    @songs = songs
    @type = type
    @guests = []
  end


   def guest_count
     return @guests.count
   end


  def check_in_guest(guest)
    if @guests.count < @capacity
    @guests << guest
    return "Guest checked in"
    else
    return "Sorry, room at capacity"
    end
  end


  def check_out_guest(guest)
    @guests.delete(guest)
  end



  def add_song(song)
    @songs.push(song)
  end


  def favourite_song_on_playlist(favsong)

    if @songs.find { |song| song == favsong }
      p @songs
      return "Whoo!"
    end

   end







end
