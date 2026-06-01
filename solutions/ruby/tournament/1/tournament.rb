=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Tournament
  COLUMN_LENGTHS = {
    team_name: 31,
    standard: 4,
    last_column: 4,
  }

  def self.get_header
    team = "Team"
    matches_played = "MP"
    wins = "W"
    draws = "D"
    losses = "L"
    points = "P"

    "#{team}#{Array.new(COLUMN_LENGTHS[:team_name] - team.length + 1).join(" ")}" +
    "|" +
    " #{matches_played} " +
    "|" +
    "  #{wins} " +
    "|" +
    "  #{draws} " +
    "|" +
    "  #{losses} " +
    "|" +
    "  #{points}"
  end

  def self.tally(input)

    stats = {}

    input.split("\n").each do |game|
      stats = gather_stats(game, stats)
    end

    create_table(stats)
  end

  def self.gather_stats(game, stats)
    team_1, team_2, result = game.split(";")
  
    [team_1, team_2].each do |team|
      unless stats.has_key?(team)
        stats[team] = {
          matches_played: 0,
          wins: 0,
          draws: 0,
          losses: 0,
          points: 0
        }
      end
    end


    stats[team_1][:matches_played] += 1
    stats[team_2][:matches_played] += 1

    case result
    when "win"
      stats[team_1][:wins] += 1
      stats[team_2][:losses] += 1
      stats[team_1][:points] += 3
    when "loss"
      stats[team_1][:losses] += 1
      stats[team_2][:wins] += 1
      stats[team_2][:points] += 3
    when "draw"
      stats[team_1][:draws] += 1
      stats[team_2][:draws] += 1
      stats[team_1][:points] += 1
      stats[team_2][:points] += 1
    end

    stats
  end

  def self.create_table(stats)

    table = "#{get_header}\n"

    sorted_stats = stats.sort_by { |team, score| [-score[:points], team] }
  
    sorted_stats.each do |team, score|
      table +=
      "#{team}#{Array.new(COLUMN_LENGTHS[:team_name] - team.length + 1).join(" ")}" +
      "|" +
      "#{get_column_entry(score[:matches_played])} " +
      "|" +
      "#{get_column_entry(score[:wins])} " +
      "|" +
      "#{get_column_entry(score[:draws])} " +
      "|" +
      "#{get_column_entry(score[:losses])} " +
      "|" +
      get_column_entry(score[:points]) +
      "\n"
    end
    table
  end

  def self.get_column_entry(score)
    "#{score > 9 ? Array.new(2).join(" ") : Array.new(3).join(" ")}#{score}"
  end
end

