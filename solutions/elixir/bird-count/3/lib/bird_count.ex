defmodule BirdCount do
  def today([]), do: nil
  def today([today | _tail]) do
    today
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([today | tail]) do
    [today + 1 | tail]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?([0 | _tail]), do: true

  def has_day_without_birds?([_head | tail]), do: has_day_without_birds?(tail)

  @doc false
  defp count([], num), do: num
  @doc false
  defp count([head | tail], num) do
    count(tail, head + num)
  end
  def total(list) do
    count(list, 0)
  end

  @doc false
  defp count_busy_days([], num), do: num
  @doc false
  defp count_busy_days([head | tail], num) do
    cond do
      head >= 5 -> count_busy_days(tail, num + 1)
      true -> count_busy_days(tail, num)
    end
  end
  def busy_days(list) do
    count_busy_days(list, 0)
  end
end
