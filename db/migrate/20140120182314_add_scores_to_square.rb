class AddScoresToSquare < ActiveRecord::Migration
  def change
    add_column :squares, :home_digit, :integer
    add_column :squares, :away_digit, :integer
  end
end
