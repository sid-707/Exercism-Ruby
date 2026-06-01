defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add({a1, b1}, {a2, b2}) do
    num = (a1 * b2) + (a2 * b1)
    den = b1 * b2
    reduce({num, den})
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract({a1, b1}, {a2, b2}) do
    num = (a1 * b2) - (a2 * b1)
    den = b1 * b2
    reduce({num, den})
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply({a1, b1}, {a2, b2}) do
    num = a1 * a2
    den = b1 * b2
    reduce({num, den})
  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by({a1, b1}, {a2, b2}) when a2 < 0 or b1 < 0 do
    den = a2 * b1 * -1
    num = a1 * b2 * -1
    reduce({num, den})
  end
  def divide_by({a1, b1}, {a2, b2}) do
    den = a2 * b1
    num = a1 * b2
    reduce({num, den})
  end

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs({a, b}) do
    num = Kernel.abs(a)
    den = Kernel.abs(b)
    reduce({num, den})
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational({a, b}, n) when n < 0 do
    num = Integer.pow(b, Kernel.abs(n))
    den = Integer.pow(a, Kernel.abs(n))
    reduce({num, den})
  end
  def pow_rational({a, b}, n) do
    num = Integer.pow(a, n)
    den = Integer.pow(b, n)
    reduce({num, den})
  end

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, {a, b}) do
    x ** (a/ b)
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce({num, den}) when den < 0 do
    gcd = Integer.gcd(num, den)

    {div(-1 * num, gcd), div(-1 * den, gcd)}
  end
  def reduce({num, den}) do
    gcd = Integer.gcd(num, den)

    {div(num, gcd), div(den, gcd)}
  end
end
