require_relative 'host.rb'
class Listing
    attr_accessor :cancellation, :reviews, :guest
    attr_reader :host, :beds, :dates_available, :price
   def initialize(host, beds, dates_available, price)
       @host = host
       @beds = beds
       @dates_available = dates_available
       @cancellation = "strict"
       @reviews = {}
       @price = price
       @guests = []
   end
   def reserve_and_pay(guest_name, nights)
       @guests.push(guest_name)
       return @price * nights
   end
   def leave_review(guest_name, text)
       @reviews[guest_name] = text
    end
end

detroit_appt = Listing.new("Jan", 2, "August 7-17th", 100)
detroit_appt.reserve_and_pay("Liz", 14)
detroit_appt.leave_review("Liz", "Beds r comfy, more art plz")
detroit_appt.leave_review("Marley", "v cool")
puts detroit_appt.reviews
