class AddForeignKeysToSquares < ActiveRecord::Migration
  def change
  	add_reference :squares, :game, index: true
  	add_column :squares, :home_index, :integer
    add_column :squares, :away_index, :integer
  end
end


#   1   2   3   4   5
#   4   6   1   8   3
# --------------------
# |	|	|	|	|	|
# --------------------
# |	|	|	|	|	|
# --------------------
# |	|	|	|	|	|
# --------------------
