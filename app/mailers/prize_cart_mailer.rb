class PrizeCartMailer < ApplicationMailer
  default from: Rails.configuration.from_email

  def receipt(prize_cart)
    @scout = prize_cart.scout
    @unit = @scout.unit
    return unless @unit.send_emails
    @event = prize_cart.event
    @prize_cart = prize_cart
    @title = 'Prize order received'
    if prize_cart.ordered?
      mail(to: prize_cart.scout.email, subject: "#{@unit.name} #{@event.name} Prize order received")
    end
  end
end
