class GameController < ApplicationController

  def prompt
  end

  def result
  end

  private

    def generate_grid(grid_size)
    @play_grid = ?
    grid_size.to_i
    grid = (1..grid_size).to_a
    letters = ("A".."Z")

    grid = grid.map do
      ("A".."Z").to_a.sample(1)
    end
    return grid

    @play_grid = generate_grid(9)
  end

end
