# frozen_string_literal: true

require 'io/console'

class TwelveDays
  def self.song
    IO.read(File.expand_path('song.txt', __dir__))
  end
end
