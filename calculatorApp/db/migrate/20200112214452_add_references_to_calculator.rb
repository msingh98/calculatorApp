class AddReferencesToCalculator < ActiveRecord::Migration[5.0]
  def change
    add_reference :calculators, :user, foreign_key: true
  end
end
