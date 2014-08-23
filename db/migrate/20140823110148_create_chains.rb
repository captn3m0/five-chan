class CreateChains < ActiveRecord::Migration
  def change
    create_table :chains do |t|
      t.string :content
      t.timestamps
      t.belongs_to :user
    end
  end
end
