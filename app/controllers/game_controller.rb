class GameController < ApplicationController

  def prompt
    @play_grid = generate_grid(9)
    @start_time = Time.now
  end

  def result
    @end_time = Time.now
    @start_time = params[:time]
    @word = params[:query]
    run_game(@word, @start_time, @end_time)
  end

  private
    def run_game(word, start_time, end_time)

      score = 0
      message= []

      if word.size > 2
        score =+ 3
      else
        result[:score] += 2
      end

      if score > 3
        message ="well done !"
      else
        message = "Too bad."
      end

    return result = {
        time: end_time-start_time,
        score: score,
        message: message
      }

    end


    def generate_grid(grid_size)
      grid = Array.new(grid_size) { ('A'..'Z').to_a[rand(26)] }
    end

end
