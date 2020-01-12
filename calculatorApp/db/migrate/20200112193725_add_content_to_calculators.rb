class AddContentToCalculators < ActiveRecord::Migration[5.0]
  def change
    add_column :calculators, :content, :text
  end
end
