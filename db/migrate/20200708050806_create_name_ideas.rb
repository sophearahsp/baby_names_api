class CreateNameIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :name_ideas do |t|
      t.references :url_identification, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
