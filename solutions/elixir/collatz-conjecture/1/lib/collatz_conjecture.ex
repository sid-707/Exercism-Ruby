defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  def collatz(1, num_steps), do: num_steps

  def collatz(n, num_steps) when (rem(n, 2) === 0) do
    collatz(div(n, 2), num_steps + 1)
  end

  def collatz(n, num_steps) when (rem(n, 2) !== 0) do
    collatz((3 * n) + 1, num_steps + 1)
  end

  def calc(input) when input <= 0, do: raise FunctionClauseError

  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) do
    collatz(input, 0)
  end
end
