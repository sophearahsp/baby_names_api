class AddStrikethroughToNameIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :name_ideas, :strikethrough, :boolean
  end
end
