defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
   if discount > 10.0 do
    before_discount.ceil(1.0 - 10.0 / 100.0)
    else
    before_discount.floor(1.0 - discount / 100.0)
   end
  end

  def monthly_rate(hourly_rate, discount) do
   hourly_rate - discount
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget - hourly_rate) / discount
  end
end
