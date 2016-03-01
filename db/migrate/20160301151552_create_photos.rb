class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :file

      t.timestamps null: false
    end
  end
end
