# frozen_string_literal: true

class Tournament
  attr_reader :matches, :stats

  def initialize(input)
    @matches = input.lines.map(&:strip)
    @stats = Hash.new do |hash, key|
      hash[key] = { win: 0, loss: 0, draw: 0 }
    end

    matches.each do |match|
      home_team, away_team, result = match.split(';')
      stats[home_team][:win] += 1 if result == 'win'
      stats[home_team][:loss] += 1 if result == 'loss'
      stats[home_team][:draw] += 1 if result == 'draw'
      stats[away_team][:win] += 1 if result == 'loss'
      stats[away_team][:loss] += 1 if result == 'win'
      stats[away_team][:draw] += 1 if result == 'draw'
    end
  end

  def self.tally(input)
    new(input).tally
  end

  def matches_played(team)
    stats[team].values.sum
  end

  def points(team)
    stats[team][:win] * 3 + stats[team][:draw]
  end

  TALLY_FORMAT = "%-30s | %2s | %2s | %2s | %2s | %2s\n"

  def tally
    header = TALLY_FORMAT % %w[Team MP W D L P]
    results = stats.sort_by { |team, _stat| [points(team) * -1, team] }.map do |team, stat|
      TALLY_FORMAT % [team, matches_played(team), stat[:win], stat[:draw], stat[:loss], points(team)]
    end
    header + results.join('')
  end
end
