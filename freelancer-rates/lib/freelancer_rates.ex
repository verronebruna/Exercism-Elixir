defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
    # hourly_rate = 60, 60 * 8 = 140
  end

  def apply_discount(before_discount, discount) do
    percent = before_discount * (discount / 100)
    before_discount - percent
    # before_discount[140] * (discount[10]/100) = 14.0
    # before_discount[140] - percent[14.0] = 126.0
  end

  def monthly_rate(hourly_rate, discount) do
    # o hour_rate está sendo passado como argumento para a função daily_rate e o resultado da função daily_rate está sendo passado como argumento para a função trunc que arredonda o valor para baixo e retorna um inteiro.
    daily_rate(hourly_rate)
    |> trunc()
    # o resultado da função daily_rate está sendo passado como argumento para a função apply_discount, que por sua vez está recebendo o argumento discount.
    |> apply_discount(discount)
    |> Kernel.*(22)
    |> trunc()
    |> round()

    # o resultado da função apply_discount está sendo passado como argumento para a função Kernel.*(22) que multiplica o resultado por 22 e retorna um inteiro.
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / daily_rate(hourly_rate))
    |> daily_rate()
    |> apply_discount(discount)))
|> Float.floor(1)
  end
end
