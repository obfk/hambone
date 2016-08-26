class AddTotalNumberOfStoriesToStats < ActiveRecord::Migration[5.0]
  def change
    add_column :stats, :total_number_of_stories, :integer
  end
end
