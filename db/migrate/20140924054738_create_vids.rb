class CreateVids < ActiveRecord::Migration
  def change
    create_table :vids do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
