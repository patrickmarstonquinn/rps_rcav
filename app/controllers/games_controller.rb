class GamesController < ApplicationController
  # only time to capitalize in ruby is first letter of a class
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied!"
    elsif @computer_move == "paper"
      @outcome = "lost!"
    else
      @outcome = "won!"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @outcome = "tied!"
    elsif @computer_move == "scissors"
      @outcome = "lost!"
    else
      @outcome = "won!"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @outcome = "tied!"
    elsif @computer_move == "rock"
      @outcome = "lost!"
    else
      @outcome = "won!"
    end

    render("games/play_scissors.html.erb")
  end
end
