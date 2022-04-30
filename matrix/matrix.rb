# frozen_string_literal: true

class Matrix
  attr_reader :matrix
  attr_writer :rows, :columns

  def initialize(matrix)
    @matrix = matrix
  end

  def string_to_numbers(text)
    text.split(' ').map!(&:to_i)
  end

  def rows
    rows = []
    matrix.split("\n").each { |n| rows << string_to_numbers(n) }
    rows
  end

  def columns
    columns = []
    items = rows.first.length

    items.times do |i|
      row = []
      rows.each { |n| row << n[i].to_i }
      columns << row
    end
    columns
  end
end
