class BoardsController < ApplicationController
  def index
    @boards = Board.page(params[:page])
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.new(board_params)
    if board.save
    flash[:notice] = "「#{board.title}」のスレッドが作成されました"
    redirect_to board
    else
      redirect_to new_board_path, flash: {
        board: board,
        error_messages: board.errors.full_messages
      }
    end
  end

  def show
    @board = Board.find(params[:id])
    @comment = @board.comments.new
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)

    redirect_to board
  end

  def destroy
    board = Board.find(params[:id])
    board.delete

    redirect_to boards_path, flash: {notice: "「#{board.title}」のスレッドが削除されました"}
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :body)
  end
end