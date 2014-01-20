class AddPlayerToSquare < ActiveRecord::Migration
  def change
    add_reference :squares, :player, index: true
  end
end
