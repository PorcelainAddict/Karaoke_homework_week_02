class Room

  attr_accessor :room_name, :songs, :till_cash, :guest_list, :room_price, :room_limit

  def initialize(room_name, songs, guest_list, till_cash, room_price, room_limit)
    @room_name = room_name
    @songs = songs
    @guest_list = []
    @till_cash = till_cash
    @room_price = room_price
    @room_limit = room_limit
  end


  def add_guest(guests)
    @guest_list.push(guests)
  end

  # def remove_guest(guests)
  #   @guest_list.shift(guests)
  # end


  def guest_count
    @guest_list.count
  end

  def add_song(song)
    @songs.push(song)
  end

  def room_limit_full(guest)
    if guest.guest_count >= 2
      p "Room limit reached"
    else  guest.guest_count>= 3
      p "Room full"
    end
  end









end
