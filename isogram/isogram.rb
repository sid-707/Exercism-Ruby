=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

require 'set'

class Isogram
  def self.isogram?(input)
    seen = Set.new
    input.downcase.each_char do |char|
      next unless char.match?(/[[:alpha:]]/)
      return false if seen.include?(char)
      seen.add(char)
    end
    true
  end
end
