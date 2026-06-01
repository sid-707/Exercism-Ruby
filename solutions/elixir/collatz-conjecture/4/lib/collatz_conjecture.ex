defmodule CollatzConjecture do

  defp collatz(1, num_steps), do: num_steps

  defp collatz(n, num_steps) when (rem(n, 2) === 0) do
    collatz(div(n, 2), num_steps + 1)
  end

  defp collatz(n, num_steps) when (rem(n, 2) !== 0) do
    collatz((3 * n) + 1, num_steps + 1)
  end

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input > 0 do
    collatz(input, 0)
  end
end
