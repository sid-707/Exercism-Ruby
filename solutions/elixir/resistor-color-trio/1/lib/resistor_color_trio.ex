defmodule ResistorColorTrio do
  @color_bands %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  @kilo Integer.pow(10, 3)
  @mega Integer.pow(10, 6)
  @giga Integer.pow(10, 9)

  defp get_number_with_unit(0), do: { 0, :ohms}

  defp get_number_with_unit(number) do
    cond do
      rem(number, @giga) === 0 -> {div(number, @giga), :gigaohms}
      rem(number, @mega) === 0 -> {div(number, @mega), :megaohms}
      rem(number, @kilo) === 0 -> {div(number, @kilo), :kiloohms}
      true -> {number, :ohms}
    end
  end
  defp get_value([head | tail], reversed_numbers) when length(tail) === 1 do
    # {num_zeroes, unit} = get_zeroes_and_unit(tail)
    [num_zeroes | _] = tail

    number = [head | reversed_numbers]
              |> Enum.reverse()
              |> Enum.join()
              |> Integer.parse()
              |> elem(0)
              |> Kernel.*(Integer.pow(10, num_zeroes))
    get_number_with_unit(number)
  end

  defp get_value([head | tail], reversed_numbers) do
    get_value(tail, [head | reversed_numbers])
  end

  @doc """
  Calculate the resistance value in ohms from resistor colors
  """
  @spec label(colors :: [atom]) :: {number, :ohms | :kiloohms | :megaohms | :gigaohms}
  def label(colors) do
    bands = colors
    |> Enum.take(3)
    |> Enum.map(fn color -> Map.get(@color_bands, color) end)

    get_value(bands, [])
  end
end
