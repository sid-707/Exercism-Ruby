=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(string="")
    @rows = string.split("\n")
  end

  def row(row)
    @rows[row-1].split.map(&:to_i)
  end

  def column(column)
    @rows.map.with_index do |_row, index|
        row(index + 1)[column - 1]
    end
  end
end