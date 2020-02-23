class AddImgToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :img, :string
  end
end
