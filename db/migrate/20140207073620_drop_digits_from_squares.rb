class DropDigitsFromSquares < ActiveRecord::Migration
  def change
  	remove_column :squares, :home_digit
  	remove_column :squares, :away_digit
  end
end
