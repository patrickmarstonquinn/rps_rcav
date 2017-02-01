class GamesController < ApplicationController
  # only time to capitalize in ruby is first letter of a class
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied!"
      @image_source = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/09/30/09/therock.jpg"
    elsif @computer_move == "paper"
      @outcome = "lost!"
      @image_source = "http://pixel.nymag.com/imgs/daily/science/2016/05/26/26-clippy.w536.h357.2x.jpg"
    else
      @outcome = "won!"
      @image_source = "http://images.hellogiggles.com/uploads/2015/12/12/Edward-Scissorhands.jpg"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @outcome = "tied!"
      @image_source = "http://pixel.nymag.com/imgs/daily/science/2016/05/26/26-clippy.w536.h357.2x.jpg"
    elsif @computer_move == "scissors"
      @outcome = "lost!"
      @image_source = "http://images.hellogiggles.com/uploads/2015/12/12/Edward-Scissorhands.jpg"
    else
      @outcome = "won!"
      @image_source = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/09/30/09/therock.jpg"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @outcome = "tied!"
      @image_source = "http://images.hellogiggles.com/uploads/2015/12/12/Edward-Scissorhands.jpg"
    elsif @computer_move == "Rock"
      @outcome = "lost!"
      @image_source = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/09/30/09/therock.jpg"
    else
      @outcome = "won!"
      @image_source = "http://pixel.nymag.com/imgs/daily/science/2016/05/26/26-clippy.w536.h357.2x.jpg"
    end

    render("games/play_scissors.html.erb")
  end
end
