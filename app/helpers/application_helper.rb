module ApplicationHelper

  def current_scout
    @current_scout
  end

  def nice_date(date)
    date.strftime("%B %d, %Y")
  end

  def nice_date_less(date)
    date.strftime("%b %d, %Y")
  end

  def nice_date_compact(date)
    date.strftime("%m-%d-%y")
  end

  def nice_date_time(datetime)
    datetime.strftime("%B %d, %Y %I:%M%p")
  end

  def nice_date_time_compact(datetime)
    datetime.strftime("%m/%d/%y %I:%M%p")
  end
  
  def nice_date_time_less(datetime)
    datetime.strftime("%b %d, %Y %I:%M%p")
  end

  def calculate_wholesale_value( product, quantity )
    product.retail_price * quantity * ( 1 - product.event.unit_commission_percentage / 100 )
  end
end
