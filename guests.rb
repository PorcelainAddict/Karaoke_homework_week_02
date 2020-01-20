class Guests

  attr_accessor :guest, :guest_wallet, :guest_fav_song

  def initialize(guest, guest_wallet, guest_fav_song)

    @guest = guest
    @guest_wallet = guest_wallet
    @guest_fav_song = guest_fav_song

  end

  def guest_pay_for_entry(guest_entry)
    @guest_wallet.room_price -= guest_entry.room_price
  end


end
