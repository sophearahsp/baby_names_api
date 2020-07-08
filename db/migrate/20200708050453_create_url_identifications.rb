class CreateUrlIdentifications < ActiveRecord::Migration[6.0]
  def change
    create_table :url_identifications do |t|
      t.string :identification

      t.timestamps
    end
  end
end
