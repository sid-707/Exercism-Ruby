=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(str)
    raise ArgumentError if str.empty?
    @str = str
  end

  def slices(n)
    raise ArgumentError if n > @str.length || n <= 0

    @str.chars.each_cons(n).map(&:join)
  end
end
